import 'package:flutter/material.dart';
import 'package:get/get.dart';

class yoeyarPage extends StatelessWidget{
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
            child: Image.asset("images/sh.jpg",
            height: 300,
            width: 450,
            ),
            ),
           Text("Shan Yoe Yar",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 27,  color: Colors.blueGrey,
           ),),
           SizedBox(height: 10),
           Text("Type:Shan",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,  color: Colors.blueGrey,
           ),),
            SizedBox(height: 10),
           Text("Address:No.54 Manaw Hari Street,Yangon",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,  color: Colors.blueGrey,
           ),),
           
            
        ],
      ),
    ),
  );
 }
}