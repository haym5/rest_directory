import 'package:flutter/material.dart';
import 'package:get/get.dart';

class donutPage extends StatelessWidget{
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
            child: Image.asset("images/jd.jpg",
            height: 300,
            width: 450,
            ),
            ),
           Text("J Donuts",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 27,  color: Colors.blueGrey,
           ),),
           SizedBox(height: 10),
           Text("Type:Fast Food",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,  color: Colors.blueGrey,
           ),),
            SizedBox(height: 10),
           Text("Address:No173/175,Pansodan Rd,Kyauktada Township,Yangon",style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 20,  color: Colors.blueGrey,
           ),),
           
            
        ],
      ),
    ),
  );
 }
}