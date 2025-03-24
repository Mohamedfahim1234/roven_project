import 'package:flutter/material.dart';

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              
              children: [
                Container(
                  width: 375,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(228, 173, 167, 167),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("EXAM APPLICATION",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
                  )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 250,top: 40),
                  child: Text("Roll No.:"),
                ),
            Padding(
              padding: const EdgeInsets.only(right: 240,top: 12),
              child: Text("Name:"),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text("Email:"),
                ),
                Container(
                  width: 200,
                  height: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                    
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromARGB(255, 22, 22, 22))
                        )
                      ),
                    ),
                  ),
                )
              ],
            )
              ],
            )
            
          ],
          
        ),
      ),
    );
  }
}