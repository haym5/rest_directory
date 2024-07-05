import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class itemPage extends StatelessWidget{
@override
 Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: Text('Restaurant directory',style: TextStyle( color:Colors.white, fontSize: 20,),),
         backgroundColor: Colors.blueGrey,
      ) ,
    body: Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/kfc1.jpg",
            height: 300,
            width: 450,
            ),
            ),
           Text("KFC",style: TextStyle(
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
           Text("Address:3rd Floor, Myanmar Plazzar, Kabar Aye Pagoda Rd, Yangon",style: TextStyle(
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