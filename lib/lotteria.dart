import 'package:flutter/material.dart';
import 'package:get/get.dart';

class lottPage extends StatelessWidget{
@override
 Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: Text('Restaurant Directory',style: TextStyle( color:Colors.white,fontSize: 20),),
         backgroundColor: Colors.blueGrey,
      ) ,
    body: Center(   
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/lo1.jpg",
            height: 300,
            width: 400,
            ),
            ),
           Text("Lotteria",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 27, 
             color: Colors.blueGrey,
           ),),
           SizedBox(height: 10),
           Text("Type:Fast Food",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20, 
             color: Colors.blueGrey,
           ),),
            SizedBox(height: 10),
           Text("Address:Junction Square 1st Floor,Pyay Rd& Kyun Taw St ,Yangon",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20, 
             color: Colors.blueGrey,
           ),),
           
        ],
      ),
    ),
  );
 }
}