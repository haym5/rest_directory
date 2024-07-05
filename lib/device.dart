
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:restaurant/sanchaung.dart';

void main() => runApp(GetMaterialApp(home: device()));

class device extends StatelessWidget{
  
  
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
            title: Text('Kamayut',
            style: TextStyle(fontSize:16,
            color:Colors.blueGrey,          
            fontWeight: FontWeight.bold,           
          ),),
           onTap: () { Get.to(());},   
           hoverColor: const Color.fromARGB(255, 195, 199, 204),                    
          ),
                
          ListTile(          
            title: Text('Mayangone',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

          ListTile(          
            title: Text('Bahan',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

          ListTile(          
            title: Text('Lanmadaw',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
            ),),
            onTap: () { Get.to(());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(           
            title: Text('Dagon',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
             ),),
             onTap: () { Get.to(());},
             hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(          
            title: Text('Kyauktada',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
           onTap: () { Get.to(());},
           hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),
                                
           ListTile(         
            title: Text('Yankin',
            style: TextStyle(fontSize:16,
             color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(());},
            hoverColor: const Color.fromARGB(255, 195, 199, 204),
          ),

           ListTile(           
            title: Text('Pebedan ',
            style: TextStyle(fontSize:16,
              color:Colors.blueGrey,
            fontWeight: FontWeight.bold,
           ),),
            onTap: () { Get.to(());},
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
          ],                     
         ),        
    );  
   }
}
     




 











                   
                
              
            
           


                        
                      
                    
                  
                
              
            
          
          
    


