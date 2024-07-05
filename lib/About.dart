import 'package:flutter/material.dart';
import 'package:get/get.dart';

class aboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Directory",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
       
      ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:20),
            Image(
          image:AssetImage('images/2.png'),
          
          width: 250,
          height:250,
          fit: BoxFit.contain,
          ),
               
                Text(
                  'Restaurant Directory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(height: 20),
                  Container(
                  width: 1100, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 247, 243, 243) ,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        height: 1.7,
                      ),
                      children: <TextSpan>[                     
                       TextSpan(
                         text: 'Welcome to Restaurant Directory app, your ultimate guide to discovering delightful dining experiences.\n',                       
                          ),                     
                        TextSpan(
                          text:'Whether you’re craving a cozy café, exotic cuisine,or a vibrant nightlife spot,we’ve got you covered.  \n',
                        ),                       
                        TextSpan(
                          text: '    - Explore a diverse range of restaurants, sorted by cuisine, price, and location .\n',
                        ),
                        TextSpan(
                          text: '    - Read authentic reviews from fellow diners to make informed choices. \n ',
                                                   
                        ),
                        TextSpan(
                          text: 'Whether you’re a foodie looking to explore new tastes or a regular diner seeking convenience, our app ensures every dining experience is memorable.\n',
                        ),                      
                      ],
                    ),
                  ),
                ),                                      
              ],
            ),
          ),
        ),       
    );
  }
}
