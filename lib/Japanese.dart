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
      home:Japanese(),
    );
  }
}

class Japanese extends StatefulWidget {
  @override
  _JapaneseState createState() => _JapaneseState();
}

class _JapaneseState extends State<Japanese> {
  final List<JapaneseCusines> cusines = [
   JapaneseCusines(
      name: 'Cho Japanese Dining & Bar',
      image: AssetImage("images/cho1.jpg"),
      address:'Add:No.1,Kaba Ayr Pagoda Rd,Yankin Township,Yangon',
      phone:'Tel:+959 258 322 223',
     
      
    ),
    JapaneseCusines(
      name: 'Gekko Co. Ltd',
      image: AssetImage("images/gek1.jpg"),
      address:'Add:535 Merchant Rd,Kyauktada Township,Yangon',
      phone:'Tel:+951 386 986',
     
      
    ),
     JapaneseCusines(
      name: 'Kohaku Japanese Restaurant',
      image: AssetImage("images/ko1.jpg"),
      address:'Add:40,Natmauk Rd,Chatrium Hotel Royal,Tamwe Township,Yangon',
      phone:'Tel:+959 544 500',
      ),
     JapaneseCusines(
      name: 'Shiki-Tei',
      image: AssetImage("images/shi1.jpg"),
      address:'Add:33 Alan Pya Pyaya Rd At the Park Royal,Yangon',
      phone:'Tel:+951 250 188',
      ),
        JapaneseCusines(
      name: 'IPPUDO Junction City',
      image: AssetImage("images/ju1.jpg"),
      address:'Add:Juncity,Corner of BoGyoke Aung San Rd,Yangon',
      phone:'Tel:+959  965 628 838',
      ),
      JapaneseCusines(
      name: 'Fuji Japanese Restaurant',
      image: AssetImage("images/fu1.jpg"),
      address:'Add:Dhammazedi Rd Market Place,Yangon',
      phone:'Tel:+959 261 767 258',
      ),
      JapaneseCusines(
      name: 'Bushido Japanese Restaurant',
      image: AssetImage("images/bu1.jpg"),
      address:'Add:75/AB,Yar Nyunt St,Dagon Twonship,Yangon',
      phone:'Tel:+959 45919 0088',
      ),
      JapaneseCusines(
      name: 'Family SUSHI',
      image: AssetImage("images/fa1.jpg"),
      address:'Add:Room 104,Building 27,U Chit Maung Housing,U Chit Maung St,Tamwe,Yangon',
      phone:'Tel:+959 731 194 56',
      ),
       JapaneseCusines(
      name: 'kamakura',
      image: AssetImage("images/ka1.jpg"),
      address:'Add:8 Kaba Aye Pagoda Rd,Ward 10, Yangon',
      phone:'Tel:+951 650 651',
      ),
      JapaneseCusines(
      name: 'Ember Japanese Restaurant and Bar',
      image: AssetImage("images/emb1.jpg"),
      address:'Add:Corner of Kaba Aye Pagoda Rd & Kan Bae Rd shop 20/21,Yankin Township, U Wisara Rd, Yangon',
      phone:'Tel:+959 777 1786 30',
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
        title: Text('Japanese Cusines',style: TextStyle(fontSize: 20,     
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
  final JapaneseCusines item;

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
            if (item.name == 'Cho Japanese Dining & Bar') 
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
              else if  (item.name =='Gekko Co. Ltd' ) 
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
              else if  (item.name == 'Kohaku Japanese Restaurant')
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
               else if  (item.name == 'Shiki-Tei')
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
              else if  (item.name == 'IPPUDO Junction City')
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
               else if  (item.name == 'Fuji Japanese Restaurant')
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
              else if  (item.name == 'Family SUSHI')
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
               else if  (item.name == 'kamakura')
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
               else if  (item.name == 'Ember Japanese Restaurant and Bar')
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

class JapaneseCusines {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  JapaneseCusines({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
