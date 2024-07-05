import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/models/restaurant.dart';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RestaurantPage(),
    );
  }
}

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final List<MyanmarRestaurant>Restaurant = [
       
    MyanmarRestaurant(
      name: 'Feel Myanmar Food',      
      image: AssetImage("images/Feel.jpg"),
      address: 'Add: 124 Pyi Htaung Su Yeikthar Street, Yangon',
      phone: 'Tel: 0973208132',
        
    ),
     MyanmarRestaurant(
      name: 'Shan Yoe Yar',      
      image: AssetImage("images/shan.jpg"),
      address: 'Add:  169, War Tan Street, Lanmadaw Township, Yangon',
      phone: 'Tel: 09 250 566 695',
      
    ),
     MyanmarRestaurant(
      name: 'Mai Thai',      
      image: AssetImage("images/mai.jpg"),
      address: 'Add: No (197), West Shwe Gone Tine(5th street) ,Bahan Township, Yangon',
      phone: 'Tel: +951383662',
      
    ),
     MyanmarRestaurant(
      name: 'Jeff Kitchen',      
      image: AssetImage("images/jeff.jpg"),
      address: 'Add:Kan Yeik Thar street,Chaw Twin Gone ,Mayangone Township, Yangon',
      phone: 'Tel: 09 265 900056',
      
    ),
     MyanmarRestaurant(
      name: 'SooRakGan Korea Restaurant',      
      image: AssetImage("images/soo.jpg"),
      address: 'Add:Min Dhama, Yangon',
      phone: 'Tel: 09 799 063435',
      
    ),
     MyanmarRestaurant(
      name: 'Bulgogi Brothers',      
      image: AssetImage("images/bulgogi.jpg"),
      address: 'Add:G-136, Ground Floor, Building D, Soho Diamond Tower, Nar Nat Taw St, Yangon',
      phone: 'Tel:  09 777 716161',
      
    ),
     MyanmarRestaurant(
      name: 'Mugunghwa',      
      image: AssetImage("images/mug.jpg"),
      address: 'Add:no-82,Sin Phyu Shin Avenue 1 Floor ,lotte Hotel Yangon',
      phone: 'Tel:  09 519 351057',
      
    ),

     MyanmarRestaurant(
      name: 'Cho Japanese Dining & Bar',    
      image: AssetImage("images/cho.jpg"),
      address: 'Add:no1,Kaba Aye Pagoda Road,Yankin Township , Yangon',
      phone: 'Tel:  09 258 322 223',
      
    ),
       
     MyanmarRestaurant(
      name: 'LOPERA Italian Restaurant',    
      image: AssetImage("images/lop.jpg"),
      address: 'Add:62 D U Htun Nyein St, Yangon',
      phone: 'Tel:   09 730 30755',
      
    ),
     
       MyanmarRestaurant(
      name: 'Lotteria',    
      image: AssetImage("images/lotteria.jpg"),
      address: 'Add:Junction Square 1st Floor,Pyay Road and Kyun Taw Street, Yangon',
      phone: 'Tel: +9512305798',
      
    ),
     MyanmarRestaurant(
      name: 'KFC',    
      image: AssetImage("images/kfc.jpg"),
      address: 'Add:375,BoGyoke Aung San Road, Yangon',
      phone: 'Tel: +951 532 489',
      
    ),
            
     MyanmarRestaurant(
      name: 'Agape Kachin Food Channel',    
      image: AssetImage("images/agape.jpg"),
      address: 'Add:18 Shwe Pyi Aye St, Yangon',
      phone: 'Tel:09 42116 7008',
      
    ),
   
    ];
  
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final filteredRestaurant = searchText.isEmpty
        ? Restaurant
        : Restaurant.where((Restaurant) => Restaurant.name.toLowerCase().contains(searchText.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(
         title: Text('Restaurant directory',style: TextStyle( color:Colors.white, fontSize: 20,),),
         backgroundColor: Colors.blueGrey,
              
      ) ,
      
      
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
              itemCount: filteredRestaurant.length,
              itemBuilder: (context, index) {
                final item = filteredRestaurant[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: item.image,
                  ),
                  title: Text(item.name,style: TextStyle(color:Colors.blueGrey,fontWeight: FontWeight.bold),),
                  
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
  final MyanmarRestaurant item;

  const ItemDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blueGrey,
       title: Text(item.name,style: TextStyle(color:Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
              
          children: <Widget>[
           
            SizedBox(height: 20),
           
              
               if  (item.name == 'Feel Myanmar Food') 
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
              else if  (item.name == 'Shan Yoe Yar') 
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
               else if  (item.name == 'Mai Thai') 
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
              else if  (item.name == 'SooRakGan Korea Restaurant') 
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
               else if  (item.name == 'Bulgogi Brothers') 
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
               else if  (item.name == 'Mugunghwa') 
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
                else if  (item.name == 'Cho Japanese Dining & Bar') 
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
              
               
               else if  (item.name == 'LOPERA Italian Restaurant') 
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
            
             
              else if  (item.name == 'Lotteria') 
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
               else if  (item.name == 'KFC') 
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
                                     
              else if  (item.name == 'Agape Kachin Food Channel') 
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

class MyanmarRestaurant {
  final String name;
  
  final ImageProvider image;
  final String address;
  final String phone;
 
 

 MyanmarRestaurant({
    required this.name,
   
    required this.image,
    required this.address,
    required this.phone,
    
   
  });
}
