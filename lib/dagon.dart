import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:dagon(),
    );
  }
}

class dagon extends StatefulWidget {
  @override
  _dagonState createState() => _dagonState();
}

class _dagonState extends State<dagon> {
  final List<dagres> cusines = [
       
       dagres(
      name: 'Thai Kitchen Restaurant',
      image: AssetImage("images/thai kit.jpg"),
      address:'Add:No.15 Than Ta Man Street ,Dagon ,Yangon',
      phone:'Tel:+959 861 3400',
      ),

      dagres(
      name: 'Santino Cafe & Restaurant',
      image: AssetImage("images/san.jpg"),
      address:'Add:18/A-1 Yar Nyunt St,Dagon Township,Yangon',
      phone:'Tel:+95 1387 880',
    ),
    
       dagres(
      name: 'Bushido Japanese Restaurant',
      image: AssetImage("images/bu1.jpg"),
      address:'Add:75/AB,Yar Nyunt St,Dagon Twonship,Yangon',
      phone:'Tel:+959 45919 0088',
      ),
      dagres(
      name: 'The Marina',
      image: AssetImage("images/ind1.jpg"),
      address:'Add:No63,Taw Win Rd,Dagon Township,Yangon',
      phone:'Tel:+959 970 550055',
      ),
       dagres(
      name: 'Great Sandwich',
      image: AssetImage("images/fast4.jpg"),
      address:'Add:33 Bo yar Nyunt Rd,Zaw Min Gyi Ward,Dagon Township,Yangon',
      phone:'Tel:+959 779 908 999',
      ),
  ];
 String searchText = '';
 
  @override
  Widget build(BuildContext context) {
    final filteredcusines = searchText.isEmpty
        ? cusines
        : cusines.where((cusines) => cusines.name.toLowerCase().contains(searchText.toLowerCase())).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey,
        title: Text('Restaurant Directory',style: TextStyle(fontSize: 20,      
        color:Colors.white),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search by restaurant name',
                prefixIcon: Icon(Icons.search,color: Colors.blueGrey, size: 24.0),
                 border:OutlineInputBorder(                 
                 borderRadius: BorderRadius.circular(10),                             
             
                ),                
                ),
              ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredcusines.length,
              itemBuilder: (context, index) {
                final item = filteredcusines[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: item.image,
                  ),
                  title: Text(item.name,style:(TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold))),
                 
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetailsPage(item: item),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ItemDetailsPage extends StatelessWidget {
  final dagres item;

  const ItemDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(item.name,style: TextStyle(fontSize: 20,color:Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[          
              
               if  (item.name == 'Thai Kitchen Restaurant')
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              )
               else if  (item.name == 'Santino Cafe & Restaurant')
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              )
              
               else if  (item.name == 'Bushido Japanese Restaurant')
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              )
              
               else if  (item.name == 'The Marina')
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              )
               else if  (item.name == 'Great Sandwich')
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              )
            else 
              Image(image: item.image),
            SizedBox(height: 20),
            Text(item.address),
             SizedBox(height: 20),
              Text(item.phone),
           
          ],
        ),
      ),
    );
  }
}

class dagres {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  dagres({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
