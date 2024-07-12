
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:restaurant/Tamwe.dart';
import 'package:restaurant/bahan.dart';
import 'package:restaurant/dagon.dart';
import 'package:restaurant/kyauktada.dart';
import 'package:restaurant/mayangone.dart';
import 'package:restaurant/sanchaung.dart';
import 'package:restaurant/yankin.dart';

void main() => runApp(GetMaterialApp(home: device()));

class device extends StatelessWidget{
  
  
 Widget build(BuildContext Context){
   
    return Scaffold(
      
      appBar:AppBar(
       title: Text('Restaurant Directory',style: TextStyle( color:Colors.white, fontSize: 20,),),
         backgroundColor: Colors.blueGrey,
              
      ) ,
      
       body: ListView(   
       
        children: [
          
           SizedBox(height: 15), 
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Image(
          image:AssetImage('images/loc.png',),
           width: 50,
          height:50,
          fit: BoxFit.contain,
          ),
          Text("Location",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),), ], ), 
           SizedBox(height: 20),                 
                      
          ListTile(          
            title: Text('Bahan',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(bahan());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),
      
           ListTile(           
            title: Text('Dagon',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
             ),),
             onTap: () { Get.to(dagon());},
             hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(          
            title: Text('Kyauktada',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
           onTap: () { Get.to(kyauk());},
           hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),
                     
           ListTile(          
            title: Text('Sanchaung',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(sanchaung());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
           ),
            ListTile(          
            title: Text('Yankin',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(yankin());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
           ),
            ListTile(          
            title: Text('Tamwe',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(tamwe());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
           ),
            ListTile(          
            title: Text('Mayangone',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(mayangone());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
           )
          ],                     
         ),        
    );  
   }
}
     




 











                   
                
              
            
           


                        
                      
                    
                  
                
              
            
          
          
    


