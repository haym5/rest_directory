import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/Signin.dart';
import 'package:restaurant/Signup.dart';

class LoginPage extends StatelessWidget {

   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.blueGrey,
       
        title: Text('Restaurant directory',style: TextStyle( color:Colors.white),),),
       
        body:Container(    
          color: Colors.white,
          child:Center(
            child:Column(
           
          children: [
            
           SizedBox(height: 15,),
            Image(
          image:AssetImage('images/image1.gif'),
          
          width: 300,
          height:300,
          fit: BoxFit.contain,
          ),
            Text('Restaurant directory',style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold,
            color:Colors.blueGrey),),

           SizedBox(height:100),
           ElevatedButton(
            child: Text("Sign In",style: TextStyle( fontSize:20.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            
            onPressed: () =>Get.to(SigninPage()),
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
           ),
            SizedBox(height:20),
           ElevatedButton(
            child: Text("Sign Up",style: TextStyle( fontSize:20.0,
            fontWeight: FontWeight.bold,color:Colors.white),),
            
            onPressed: () =>Get.to(SignupPage()),
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
           ),

           
           
           
          ],
           
        ),
        
        
        ),
        ),
        );
}
}

        






