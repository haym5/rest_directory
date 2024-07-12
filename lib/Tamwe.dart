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
      home:tamwe(),
    );
  }
}

class tamwe extends StatefulWidget {
  @override
  _tamweState createState() => _tamweState();
}

class _tamweState extends State<tamwe> {
  final List<tares> cusines = [
       
       tares(
       name: 'Family SUSHI',
      image: AssetImage("images/fa1.jpg"),
      address:'Add:Room 104,Building 27,U Chit Maung Housing,U Chit Maung St,Tamwe,Yangon',
      phone:'Tel:+959 731 194 56',
      ),

      tares(
      name: 'Foodfare',
      image: AssetImage("images/ind6.jpg"),
      address:'Add:102/104,Kyaik Ka San Rd,Tamwe Township,Yangon',
      phone:'Tel:+959 770 099 637',
      
    ),
      tares(
      name: 'Purple Palace Rooftop Restaurant',
      image: AssetImage("images/fu1.jpg"),
      address:'Add:No-4 E Horse Race Course Rd,Tamwe, Yangon 11211',
      phone:'Tel: 09 779 657144',
      ),
      tares(
      name: 'Shwe Khit',
      image: AssetImage("images/it7.jpg"),
      address:'Add:NO-24,Tamwe ,Zay Haung street,Yangon',
      phone:'',
      ),
       tares(
      name: 'Osushi Tamwe',
      image: AssetImage("images/royal.jpg"),
      address:'Add: no.44 corner of Thamain Bayan Street and, Dhamma Darna Street, Yangon ',
      phone:'09 766 001557',
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
  final tares item;

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
              
               if  (item.name == 'Family SUSHI')
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
               else if  (item.name == 'Foodfare')
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
              
               else if  (item.name == 'Purple Palace Rooftop Restaurant')
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
              
               else if  (item.name == 'Shwe Khit')
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
               else if  (item.name == 'Osushi Tamwe')
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

class tares {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  tares({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
