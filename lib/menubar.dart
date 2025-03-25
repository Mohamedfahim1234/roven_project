import 'package:flutter/material.dart';

class menubar extends StatelessWidget {
  const menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [Row
          (mainAxisAlignment: MainAxisAlignment.start),
          IconButton(onPressed:() {},
           icon: Image.asset("images/notice.png",height: 50,width: 50,),
           ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: 
              Text("Notice Board",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
              ),
              ),
            ),
            ],
            ),
          Row(children: [Row
          (mainAxisAlignment: MainAxisAlignment.start),
          IconButton(onPressed: () {},
           icon: Image.asset("images/attend.png",height: 50,width: 50,),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Attendance",
             style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
             ),
             ),
           ),
          ],
          ),
          Row(children: [Row
          (mainAxisAlignment: MainAxisAlignment.start),
          IconButton(onPressed: ()  {}, 
          icon:Image.asset("images/cia.png",height: 70,width: 70,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("CIA Performance",
            style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,
             ),
            ),
          )
          ],)
          ]  
    ),
    ),
    );
  }
}