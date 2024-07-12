import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/login.dart';

void main() => runApp(GetMaterialApp(
  debugShowCheckedModeBanner: false,
  home: Main()));

class Main extends StatelessWidget {

  Widget build( BuildContext context ){
    return Scaffold(

               appBar:AppBar(
               title: Text('Restaurant Directory',style: TextStyle(  color:Colors.white
              ),),
              backgroundColor: Colors.blueGrey,
           
      ) ,
        body:Container(     
           color: Colors.white,
         child:Center(
            child:Column(
            children: [
              SizedBox(height:30),
              Text('Restaurant Directory',style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,color:Colors.blueGrey
              ),),
             
            SizedBox(height:20),
            Image(
          image:AssetImage('images/2.png'),
          
          width: 300,
          height:350,
          fit: BoxFit.contain,
          ),
           
          SizedBox(height:50),  
          ElevatedButton(
             child: Text("Get started now",style: TextStyle( fontSize:20.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),            
            onPressed: () => Get.to(LoginPage()),
          ),

            ], 
           ),   
        ),
        ),
        );
  }
}