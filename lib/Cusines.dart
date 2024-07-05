
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:restaurant/Burmese.dart';
import 'package:restaurant/Chinese.dart';
import 'package:restaurant/Indian.dart';
import 'package:restaurant/Italian.dart';
import 'package:restaurant/Japanese.dart';
import 'package:restaurant/Kachin.dart';
import 'package:restaurant/Korean.dart';
import 'package:restaurant/Shan.dart';
import 'package:restaurant/fastfood.dart';
import 'package:restaurant/thai.dart';

void main() => runApp(GetMaterialApp(home: CusinesPage()));

class CusinesPage extends StatelessWidget{
  
  
 Widget build(BuildContext Context){
   
    return Scaffold(
      
      appBar:AppBar(
       title: Text('Restaurant directory',style: TextStyle( color:Colors.white, fontSize: 20,),),
         backgroundColor: Colors.blueGrey,
              
      ) ,
      
       body: ListView(
        children: [
           SizedBox(height: 20),            
          ListTile(                
            title: Text('Burmese cusines',
            style: TextStyle(fontSize:16,
            color:Colors.blueGrey,          
            fontWeight: FontWeight.bold,           
          ),),
           onTap: () { Get.to(Burmese());},   
           hoverColor: const Color.fromARGB(255, 195, 199, 204),                    
          ),
         
          ListTile(          
            title: Text('Thai cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(Thai());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

          ListTile(          
            title: Text('Korean cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(Korean());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

          ListTile(          
            title: Text('Chinese cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(Chinese());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

          ListTile(          
            title: Text('Japanese cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(Japanese());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(           
            title: Text('Indian cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
             ),),
             onTap: () { Get.to(Indian());},
             hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(          
            title: Text('Italian cusines',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
           onTap: () { Get.to(Italian());},
           hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),
                                
           ListTile(         
            title: Text('Kachin',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(Kachin());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(           
            title: Text('Shan ',
            style: TextStyle(fontSize:16,
              color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(Shan());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),
          
           ListTile(          
            title: Text('Fast food',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(fastfood());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
           ),
          ],                     
         ),        
    );  
   }
}
     




 











                   
                
              
            
           


                        
                      
                    
                  
                
              
            
          
          
    


