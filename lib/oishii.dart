import 'package:flutter/material.dart';
import 'package:get/get.dart';

class oishiiPage extends StatelessWidget{
@override
 Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: Text('Restaurant Directory',style: TextStyle( color:Colors.white,fontSize: 20),),
         backgroundColor: Colors.blueGrey,
      ) ,
    body:Center(  
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("images/jap1.jpg",
            height: 300,
            width: 400,
            ),
            ),
           Text("Oishii Sushi",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 27,
             color: Colors.blueGrey, 
           ),),
           SizedBox(height: 10),
           Text("Type:Japanese",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20, 
             color: Colors.blueGrey,
           ),),
            SizedBox(height: 10),
           Text("Address:77B Shin Saw Pu, Yangon",style: TextStyle(
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