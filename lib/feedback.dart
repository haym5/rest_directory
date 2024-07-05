import 'package:flutter/material.dart';
import 'database_helper.dart';

void main() {
  runApp(MaterialApp(
    home: FeedbackPage(),
  ));
}

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  String _selectedRating = '';
  final _nameController = TextEditingController();
  String _feedbackText = '';

  List<Map<String, dynamic>> _submittedFeedbacks = [];

  @override
  void initState() {
    super.initState();
    _fetchFeedbacks();
  }

  void _fetchFeedbacks() async {
    final feedbacks = await DatabaseHelper.instance.getAllFeedback();
    setState(() {
      _submittedFeedbacks = feedbacks;
    });
  }

  void _submitFeedback() async {
    if (_selectedRating.isNotEmpty && _nameController.text.isNotEmpty && _feedbackText.isNotEmpty) {
      final newFeedback = {
        'name': _nameController.text,
        'feedback': _feedbackText,
        'rating': _selectedRating,
      };
      await DatabaseHelper.instance.insertFeedback(newFeedback);
      _nameController.clear();
      setState(() {
        _selectedRating = '';
        _feedbackText = '';
      });
      _fetchFeedbacks(); // Refresh the list of feedbacks
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Feedback submitted!')));
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Submit Feedback ',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'How was your experience?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Rate us:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            // Rating selection buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRatingButton('😞', 'Bad'),
                SizedBox(width: 10.0),
                _buildRatingButton('😐', 'Okay'),
                SizedBox(width: 10.0),
                _buildRatingButton('😊', 'Good'),
              ],
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Your Name ',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your feedback ',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              onChanged: (value) {
                setState(() {
                  _feedbackText = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: _submitFeedback,
                child: Text('Submit feedback'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Submitted Feedback:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _submittedFeedbacks.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0),
                  child: ListTile(
                    title: Text('Rating: ${_submittedFeedbacks[index]['rating']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name: ${_submittedFeedbacks[index]['name']}'),
                        Text('Feedback: ${_submittedFeedbacks[index]['feedback']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingButton(String emoji, String ratingText) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedRating = ratingText;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _selectedRating == ratingText ? Colors.blue : Colors.grey,
      ),
      child: Text(
        emoji,
        style: TextStyle(fontSize: 32.0),
      ),
    );
  }
}
