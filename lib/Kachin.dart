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
      home:Kachin(),
    );
  }
}

class Kachin extends StatefulWidget {
  @override
  _KachinState createState() => _KachinState();
}

class _KachinState extends State<Kachin> {
  final List<KachinCusines> cusines = [
   KachinCusines(
      name: 'Agape Kachin Food Channel',
      image: AssetImage("images/kac1.jpg"),
      address:'Add:18 Shwe Pyi Aye St, Yangon',
      phone:'Tel:+959 42116 7008',
     
      
    ),
    KachinCusines(
      name: 'Mu Ai Kachin Food',
      image: AssetImage("images/kac2.jpg"),
      address:' No.10 Hledan 1st St, Yangon',
      phone:'Tel:+959 974 281883',
     
      
    ),
     KachinCusines(
      name: 'Hka Hku Kachin Traditional Food',
      image: AssetImage("images/kac3.jpg"),
      address:'Add:No.8, Ground Floor, ချမ်းသာလမ်း, Yangon',
      phone:'Tel:+959 44534 6269',
      ),
       KachinCusines(
      name: 'Bum Sumshi Kachin Food',
      image: AssetImage("images/kac4.jpg"),
      address:'Add:No.135 Shwe Pyi Aye St, Yangon 11111',
      phone:'Tel:+959 778 180 316',
      ),
       KachinCusines(
      name: 'JA BUM Kachin Cuisine',
      image: AssetImage("images/kac5.jpg"),
      address:'Add:Sanchaung, 18 Za Bu Rit St, Yangon 11111',
      phone:'Tel:+959 9403 88865',
      ),
      KachinCusines(
      name: 'Chin-Ngan-Sat (Kachin Food)',
      image: AssetImage("images/kac7.jpg"),
      address:'Add:Junction City, Level 5, 192 Corner of 28th St, & Bo Gyoke Rd, Yangon',
      phone:'Tel:+959 787 865666',
      ),
      KachinCusines(
      name: 'Manaw Cherry',
      image: AssetImage("images/kac6.jpg"),
      address:'Add:R43M+F4G, Bagaya St, Yangon',
      phone:'',
      ),
       KachinCusines(
      name: 'Peace House Kachin Traditional Food & BBq',
      image: AssetImage("images/kac8.jpg"),
      address:'Add:15A Tha Pyay Nyo St, Yangon',
      phone:'Tel:+959 950 341 045',
      ),
       KachinCusines(
      name: 'Hu Gawng Kachin Traditional Food',
      image: AssetImage("images/kac9.jpg"),
      address:'Add:Chan Thar St, Yangon 11111',
      phone:'',
      ),
      KachinCusines(
      name: 'Kachin Yunam Skaw Htaminn',
      image: AssetImage("images/kac10.jpg"),
      address:'Add: No 02-09 Corner of U Aung Myat Road &, Kan Yeik Tha Rd, Yangon',
      phone:'2',
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
        title: Text('Kachin Cusines',style: TextStyle(fontSize: 20,     
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
  final KachinCusines item;

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
            if (item.name == 'Agape Kachin Food Channel') 
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
              else if  (item.name =='Mu Ai Kachin Food' ) 
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
              else if  (item.name == 'Hka Hku Kachin Traditional Food')
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
               else if  (item.name == 'Bum Sumshi Kachin Food')
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
              else if  (item.name == 'JA BUM Kachin Cuisine')
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
               else if  (item.name == 'Chin-Ngan-Sat (Kachin Food)')
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
               else if  (item.name == 'Manaw Cherry')
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
              else if  (item.name == 'Peace House Kachin Traditional Food & BBq')
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
               else if  (item.name == 'Hu Gawng Kachin Traditional Food')
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
               else if  (item.name == 'Kachin Yunam Skaw Htaminn')
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

class KachinCusines {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  KachinCusines({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
