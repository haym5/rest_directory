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
      home:Shan(),
    );
  }
}

class Shan extends StatefulWidget {
  @override
  _ShanState createState() => _ShanState();
}

class _ShanState extends State<Shan> {
  final List<ShanCusines> cusines = [
   ShanCusines(
      name: 'Shan Kitchen_Nawaday',
      image: AssetImage("images/shan1.jpg"),
      address:'Add:နဝဒေးလမ်း, Yangon',
      phone:'Tel:+959 774 191 772',
       
    ),
     ShanCusines(
      name: 'Shan Yoe Yar Restaurant ',
      image: AssetImage("images/shan2.jpg"),
      address:'Add:No.54 Manaw Hari Street,Yangon',
      phone:'',
      
    ),
     ShanCusines(
      name: 'မောဝ်ရှမ်းအောင် (နမ့်ခမ်း) Shan Restaurant',
      image: AssetImage("images/shan3.jpg"),
      address:'Add:R5H7+F33, Yangon',
      phone:'Tel: 09 260 438 545',
      ),
       ShanCusines(
      name: 'Shan Café',
      image: AssetImage("images/shan4.jpg"),
      address:'Add: O-227 Kan Yeik Thar St, Yangon 11401',
      phone:'Tel:+959 44141 5636',
      ),
       ShanCusines(
      name: '999 Shan Noodle House',
      image: AssetImage("images/shan5.jpg"),
      address:'Add:130b ၃၄ လမ်း, Yangon',
      phone:'Tel:01 389 363',
      ),
     ShanCusines(
      name: 'Nam Kham Family Shan Restaurant',
      image: AssetImage("images/shan6.jpg"),
      address:'Add:37th Street, middle block, Yangon',
      phone:'Tel:09 774 587277',
      ),
      ShanCusines(
      name: 'Sopyae Shan Noodle Restaurant',
      image: AssetImage("images/shan7.jpg"),
      address:'Add:No. 26, Shan Kone Street San Chaung Tsp, Yangon',
      phone:'Tel:+959 772 523139',
      ),
       ShanCusines(
      name: 'SHAN YOMA Noodles Restaurant',
      image: AssetImage("images/shan8.jpg"),
      address:'Add:68B, Mingalar st South Okkalapa Tsp, Yangon',
      phone:'Tel:+959 954 031122',
      ),
       ShanCusines(
      name: 'Shwe Shan Ma',
      image: AssetImage("images/shan9.jpg"),
      address:'Add:W55H+4PW, Yangon',
      phone:'',
      ),
      ShanCusines(
      name: 'Shan Lay Noodle Shop',
      image: AssetImage("images/shan10.jpg"),
      address:'Add:R57C+25M, U Chit Maung Rd, Yangon',
      phone:'Tel:+959 799 874616',
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
        title: Text('Shan Cusines',style: TextStyle(fontSize: 20,     
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
  final ShanCusines item;

  const ItemDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(item.name,style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold,
        color:Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (item.name == 'Shan Kitchen_Nawaday') 
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
              else if  (item.name =='Shan Yoe Yar Restaurant ' ) 
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
              else if  (item.name == 'မောဝ်ရှမ်းအောင် (နမ့်ခမ်း) Shan Restaurant')
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
               else if  (item.name == 'Shan Café')
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
              else if  (item.name == '999 Shan Noodle House')
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
               else if  (item.name == 'Nam Kham Family Shan Restaurant')
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
               else if  (item.name == 'Sopyae Shan Noodle Restaurant')
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
              else if  (item.name == 'SHAN YOMA Noodles Restaurant')
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
               else if  (item.name == 'Shwe Shan Ma')
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
               else if  (item.name == 'Shan Lay Noodle Shop')
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

class ShanCusines {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  ShanCusines({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
