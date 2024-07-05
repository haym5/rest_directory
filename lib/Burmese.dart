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
      home:Burmese(),
    );
  }
}

class Burmese extends StatefulWidget {
  @override
  _BurmeseState createState() => _BurmeseState();
}

class _BurmeseState extends State<Burmese> {
  final List<BurmeseCusines> cusines = [
   BurmeseCusines(
      name: 'Wai Wai Noodle Place',
      image: AssetImage("images/wai.jpg"),
      address:'Add:301 Bo Aung Kyaw st,Kyauktada Township,Yangon',
      phone:'Tel:+959 42115 0524',
     
      
    ),
     BurmeseCusines(
      name: 'Lucky 7',
      image: AssetImage("images/lucky.jpg"),
      address:'Add:49 st & Mahabandoola Road,Yangon',
      phone:'Tel:+951 292 382',
     
      
    ),
     BurmeseCusines(
      name: 'Aung Thuka',
      image: AssetImage("images/aung.jpg"),
      address:'Add:17(A) 1st street West Shwegondaing,Yangon',
      phone:'Tel:525194',
      ),
       BurmeseCusines(
      name: 'Da Nu Phyu Daw Saw Yee',
      image: AssetImage("images/danu.jpg"),
      address:'Add:222A,Lanthit Road,Nant Thar Gone QTR Insein,Yangon',
      phone:'Tel:+959 513 6892',
      ),
        BurmeseCusines(
      name: 'Khaing Khaing Kyaw',
      image: AssetImage("images/khaing.jpg"),
      address:'Add:Near Thu Ka Gabar Clinic,Another At Gandamar Wholesale Lot,Yangon',
      phone:'Tel:+959 797 475044',
      ),
      BurmeseCusines(
      name: 'House of Memories',
      image: AssetImage("images/house.jpg"),
      address:'Add:290 U Wisara Road,Yangon',
      phone:'Tel:+95 1534 242',
      ),
      BurmeseCusines(
      name: 'Hlamyanmar (Shweba) Restaurant',
      image: AssetImage("images/hla.jpg"),
      address:'Add:No.27 5th st,West Shwegondaing Rd,Bahan,Yangon',
      phone:'Tel:+959 254 225 247',
      ),
       BurmeseCusines(
      name: 'LinkAge Restaurant and Art Gallery',
      image: AssetImage("images/link.jpg"),
      address:'Add:Seikanthar st 141,1st Floor,Yangon',
      phone:'Tel:+959 45193 3034',
      ),
       BurmeseCusines(
      name: 'Burma Bistro',
      image: AssetImage("images/burma.jpg"),
      address:'Add:No.644 First Floor,Corner of Merchant Rd & Shwe Bon Thar Rd,Yangon',
      phone:'Tel:+959 40118 3838',
      ),
      BurmeseCusines(
      name: 'Feel Myanmar Food',
      image: AssetImage("images/feelmyanmar.jpg"),
      address:'Add:124 Pyi Htaung Su Yeikthar st,Yangon',
      phone:'Tel:+959 732 08132',
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
        title: Text('Burmese Cusines',style: TextStyle(fontSize: 20,       
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
  final BurmeseCusines item;

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
            if (item.name == 'Wai Wai Noodle Place') 
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
              else if  (item.name =='Lucky 7' ) 
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
              else if  (item.name == 'Aung Thukha')
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
               else if  (item.name == 'Da Nu Phyu Daw Saw Yee')
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
              else if  (item.name == 'Khaing Khaing Kyaw')
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
               else if  (item.name == 'House of Memories')
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
               else if  (item.name == 'Hlamyanmar (Shweba) Restaurant')
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
              else if  (item.name == 'LinkAge Restaurant and Art Gallery')
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
               else if  (item.name == 'Burma Bistro')
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
               else if  (item.name == 'Feel Myanmar Food')
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

class BurmeseCusines {
  final String name;
  final ImageProvider image;
   final String address;
  final String phone;

  BurmeseCusines({
    required this.name,
    required this.address,
    required this.image,
    required this .phone,
   
   
  });
}
