import 'package:flutter/material.dart';
import 'package:restaurant/database_helper.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _reviewController = TextEditingController();
  double _rating = 0.0;
  List<Map<String, dynamic>> _reviews = [];

  @override
  void initState() {
    super.initState();
    _fetchReviews();
  }

  void _fetchReviews() async {
    final reviews = await DatabaseHelper.instance.getAllReviews();
    setState(() {
      _reviews = reviews;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _reviewController.dispose();
    super.dispose();
  }

  void _submitReview() async {
    if (_formKey.currentState!.validate()) {
      final newReview = {
        'name': _nameController.text,
        'review': _reviewController.text,
        'rating': _rating,
      };
      await DatabaseHelper.instance.insertReview(newReview);
      _nameController.clear();
      _reviewController.clear();
      setState(() {
        _rating = 0.0;
      });
      _fetchReviews(); // Refresh the list of reviews
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Review submitted!')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit a Review',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      controller: _reviewController,
                      decoration: InputDecoration(
                        labelText: 'Your Review',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey),
                        ),
                      ),
                      maxLines: 5,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your review';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Your Rating',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    ),
                    Slider(
                      value: _rating,
                      onChanged: (newRating) {
                        setState(() {
                          _rating = newRating;
                        });
                      },
                      min: 0,
                      max: 5,
                      divisions: 5,
                      label: '$_rating',
                      activeColor: Colors.blueGrey,
                      inactiveColor: const Color.fromARGB(255, 182, 179, 255),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: _submitReview,
                        child: Text('Submit Review'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            Divider(),
            Text(
              'Total Submitted Reviews :  ${_reviews.length}',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Expanded(
              child: _reviews.isEmpty
                  ? Center(child: Text('No reviews submitted yet', style: TextStyle(color:Colors.blueGrey)))
                  : ListView.builder(
                      itemCount: _reviews.length,
                      itemBuilder: (context, index) {
                        final review = _reviews[index];
                        return Card(
                          color:  Color.fromARGB(255, 247, 243, 243),
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Name:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                Text(review['name']),
                                SizedBox(height: 8),
                                Text(
                                  'Your Review:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                Text(review['review']),
                                SizedBox(height: 8),
                                Text(
                                  'Your Rating:',
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                                Row(
                                  children: List.generate(
                                    review['rating'].round(),
                                    (index) => Icon(Icons.star, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
