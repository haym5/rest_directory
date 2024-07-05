
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant/About.dart';
import 'package:restaurant/All.dart';
import 'package:restaurant/Cusines.dart';
import 'package:restaurant/Donut.dart';
import 'package:restaurant/Yoeyar..dart';
import 'package:restaurant/device.dart';
import 'package:restaurant/feedback.dart';
import 'package:restaurant/itempage.dart';
import 'package:restaurant/lotteria.dart';
import 'package:restaurant/main.dart';
import 'package:restaurant/mugunghwa.dart';
import 'package:restaurant/oishii.dart';
import 'package:restaurant/pizza.dart';
import 'package:restaurant/review.dart';



void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget{

   Widget build(BuildContext context) {
    return Scaffold(    
     drawer:NavBar(),
      appBar:AppBar(
         title: Text('Restaurant Directory',style: TextStyle(  color:Colors.white,
         fontSize: 20,
              ),),
         backgroundColor: Colors.blueGrey,
      ) ,
      body:ListView(  
         
      children:[
        SizedBox(height: 15),
       Padding(padding: const EdgeInsets.only(top: 10,left:10),
       child: Text("Find the best restaurants for you",
        style:TextStyle(
         fontSize:25,
         fontWeight: FontWeight.w500,
        // color: Colors.blueGrey,
        ),
        ),),
          AllWidget(),
         
         Padding(padding: EdgeInsets.only(top:10,left:10),
         child: Text(
          "Popular Restaurants",style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize:25,
            // color: Colors.blueGrey,
          ),
         ),
         ),
          PopularWidget(),
        ],
       
      ),    
     ); 
  }
}

class PopularWidget  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
       padding:EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [ 
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                    onTap: (){
                      Get.to(itemPage());},

                    
                     
                   child: Container(
                      child: Image.asset("images/kfc1.jpg"),
                      height: 115,
                    ),
                   ),
                     Text("KFC",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Fast Food",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ), 
                                                         
                  ],               
                ),
               
              ),  
             
            ),          
            ),
            
                 Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                    onTap: (){
                      Get.to(lottPage());},

                    
                   child:  Container(
                      child: Image.asset("images/lo1.jpg"),
                      height: 115,
                    ),),
                     Text("Lotteria",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Fast Food",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                          
                  ],
                ),
              ),
            ),
            ),
          ],
              ),
                 ),
                   Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                       InkWell(
                    onTap: (){
                      Get.to(mugPage());},
                    child:Container(
                      child: Image.asset("images/kore1.jpg"),
                      height: 115,
                    ),),
                     Text("Mugunghwa",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Korean",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                                 
                  ],
                ),
              ),
            ),
            ),
               Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                      InkWell(
                    onTap: (){
                      Get.to(oishiiPage());},
                    child:Container(
                      child: Image.asset("images/jap1.jpg"),
                      height: 115,
                    ),),
                     Text("Oishii Sushi",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Japanese",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     
                
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
          ],
        ),
      ), 
            
         Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                     InkWell(
                    onTap: (){
                      Get.to(pizzaPage());},
                    child:Container(
                      child: Image.asset("images/thai1.jpg"),
                      height: 115,
                    ),),
                     Text("Pizza Maru",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Italian",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     
                    
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
       Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 227,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                     InkWell(
                    onTap: (){
                      Get.to(donutPage());},
                    child:Container(
                      child: Image.asset("images/jd.jpg"),
                      height: 115,
                    ),),
                     Text("J Donuts",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Fast Food",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     
                    
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
       Padding(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 170,
              height: 227,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                     InkWell(
                    onTap: (){
                      Get.to(yoeyarPage());},
                    child:Container(
                      child: Image.asset("images/sh.jpg"),
                      height: 115,
                    ),),
                     Text("Shan Yoe Yar",style:TextStyle(fontSize: 23,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     SizedBox(height: 4),
                     Text("Type:Shan",style:TextStyle(fontSize:15,
                     fontWeight: FontWeight.bold,
                     color: Colors.blueGrey,
                     ) ,
                     ),
                     
                    
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
          ],
        ),
      ), 
            
    );
  }
}

class NavBar  extends StatelessWidget{
  const NavBar({super.key});

 @override
 Widget build(BuildContext context){
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName:const Text(""), 
          accountEmail: const Text(""),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(child: Image.asset('images/profile.jpg'),),
          ),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
          ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
           onTap: () { Get.to(aboutPage());},
          ),
          ListTile(
            leading: Icon(Icons.reviews),
            title: Text('Reviews'),
             onTap: () { Get.to(ReviewPage());},
          ),
          ListTile(
            leading: Icon(Icons.restaurant_menu_sharp),
            title: Text('Cusines'),
            onTap: () { Get.to(CusinesPage());},
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('All Directory'),
            onTap: () { Get.to(RestaurantPage());},
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
             onTap: () { Get.to(FeedbackPage());},
          ),
          
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Signout'),
           onTap: () { Get.to(Main());},
          ),

      ],
    ),
  );
 }

}


class AllWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
     
      scrollDirection: Axis.horizontal,
       child:Padding(
       padding: EdgeInsets.symmetric(vertical: 20),
      
      child: Row(
        children:[
          Padding(padding: EdgeInsets.symmetric(),
          child:Container(
            
            padding:EdgeInsets.all(10),
           
            
            child:Column(
              children: [
              SizedBox(height:10), 
           ElevatedButton(
            child: Text("All Directory",style: TextStyle( fontSize:17.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            
            onPressed: () =>Get.to(RestaurantPage()),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
               ),
  
              ],
            ), 

          ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal:8),
          child:Container(
             
            padding:EdgeInsets.all(5),
           
            child:Column(
              children: [
               
            SizedBox(height:10),  
           ElevatedButton(
            child: Text("Cusines",style: TextStyle( fontSize:17.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            
            onPressed: () =>Get.to(CusinesPage()),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
               ),
        ]
            ),
            ),
      ),
        
       
       Padding(padding: EdgeInsets.symmetric(horizontal:8),
          child:Container(
             
            padding:EdgeInsets.all(5),
           
            child:Column(
              children: [

              SizedBox(height:10), 
           ElevatedButton(
            child: Text("Location",style: TextStyle( fontSize:17.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            
            onPressed: () =>Get.to(device()),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
               ),      
        ]
            ),
            ), 
          ),  
        ],
      ), 
   ),
   );
  }
}




