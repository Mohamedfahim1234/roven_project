import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("Home",style: TextStyle(color: Colors.indigo[300]),),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
               child: Padding(
                 padding: const EdgeInsets.only(left: 115),
                 child: Text("ATTENDANCE",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
               ),
        )
        
            
             
          ],
        ),
      ),
    body:Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text("Apply Leave",style: TextStyle(fontSize: 15,color: Colors.indigo,fontWeight: FontWeight.bold),),
          ),
        )
  
      ],
      
    ),
         
    );
  }
}