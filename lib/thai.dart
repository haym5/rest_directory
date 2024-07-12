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
      home:Thai(),
    );
  }
}

class Thai extends StatefulWidget {
  @override
  _ThaiState createState() => _ThaiState();
}

class _ThaiState extends State<Thai> {
  final List<ThaiCusines> cusines = [
   ThaiCusines(
      name: 'Mai Thai',
      image: AssetImage("images/maithai.jpg"),
      address:'Add:No 197 1-3, West Shwe Gone Dine,5th st,Bahan,Yangon',
      phone:'Tel:+951 383 662',   
      
    ),
     ThaiCusines(
      name: 'Royal Jasmine Authentic Thai Cuisine',
      image: AssetImage("images/Royal.jpg"),
      address:'Add:Diamond Condo,Corner of Pyay Rd &Narnataw Rd Ground Floor,Tower E,Yangon',
      phone:'Tel:+959 964 496 365',   
      
    ),
     ThaiCusines(
      name: 'THAI 47 - Downtown Branch',
      image: AssetImage("images/thai_47.jpg"),
      address:'Add:No 153 Corner of 47th st& Anawyahta Rd,Yangon',
      phone:'Tel:+959 965 169 215',
      ),
       ThaiCusines(
      name: 'Jeff Kitchen',
      image: AssetImage("images/jef.jpg"),
      address:'Add:4A,Kan Yeik Thar Street,Chaw Twin Gone,Mayangone ,Yangon',
      phone:'Tel:+959 265 900 056',
      ),
        ThaiCusines(
      name: 'Bangkok Kitchen',
      image: AssetImage("images/ban.jpg"),
      address:'Add:Near Chatrium Hotel,Yangon',
      phone:'Tel:+959 253 155300',
      ),
      ThaiCusines(
      name: 'APK Kitchen Thai Food',
      image: AssetImage("images/APK.jpg"),
      address:'Add:393 Shwe Bon Thar Rd,Yangon',
      phone:'Tel:+959 432 07659',
      ),
     ThaiCusines(
      name: 'Thai Kitchen Restaurant',
      image: AssetImage("images/thai kit.jpg"),
      address:'Add:No.15 Than Ta Man Street ,Dagon ,Yangon',
      phone:'Tel:+959 861 3400',
      ),
       ThaiCusines(
      name: 'New Doreen Restaurant',
      image: AssetImage("images/new.jpg"),
      address:'Add:On the Wardan Rd,Yangon',
      phone:'',
      ),
       ThaiCusines(
      name: 'MANORA Thai Cuisine & Bistro',
      image: AssetImage("images/mano.jpg"),
      address:'Add:No.644 First Floor,Corner of Merchant Rd & Shwe Bon Thar Rd,Yangon',
      phone:'Tel:+959 40118 3838',
      ),
      ThaiCusines(
      name: 'Santino Cafe & Restaurant',
      image: AssetImage("images/san.jpg"),
      address:'Add:18/A-1 Yar Nyunt St,Dagon Township,Yangon',
      phone:'Tel:+95 1387 880',
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
        title: Text('Thai Cusines',style: TextStyle(fontSize: 20,
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
  final ThaiCusines item;

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
            if (item.name == 'Mai Thai') 
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
              else if  (item.name =='Royal Jasmine Authentic Thai Cuisine' ) 
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
              else if  (item.name == 'THAI 47 - Downtown Branch')
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
               else if  (item.name == 'Jeff Kitchen')
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
              else if  (item.name == 'Bangkok Kitchen')
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
               else if  (item.name == 'APK Kitchen Thai Food')
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
               else if  (item.name == 'Thai Kitchen Restaurant')
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
              else if  (item.name == 'New Doreen Restaurant')
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
               else if  (item.name == 'MANORA Thai Cuisine & Bistro')
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

class ThaiCusines {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  ThaiCusines({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
