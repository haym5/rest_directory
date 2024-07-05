import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mugPage extends StatelessWidget{
@override
 Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: Text('Restaurant directory',style: TextStyle( color:Colors.white,fontSize: 20),),
         backgroundColor: Colors.blueGrey,
      ) ,
    body: Center(  
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/kore1.jpg",
            height: 300,
            width: 400,
            ),
            ),
           Text("Mugunghwa",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 27, 
             color: Colors.blueGrey,
           ),),
           SizedBox(height: 10),
           Text("Type:Korean",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20, 
             color: Colors.blueGrey,
           ),),
            SizedBox(height: 10),
           Text("Address:No.82 Sin Phyu Shin Avenue 1 Floor,Lotte Hotel ,Yangon",style: TextStyle(
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