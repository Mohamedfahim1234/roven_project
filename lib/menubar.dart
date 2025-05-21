import 'package:flutter/material.dart';

// ignore: camel_case_types
class menubar extends StatelessWidget {
  const menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/attend.png",
                        height: 150,
                        width: 150,
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/attend.png",
                        height: 150,
                        width: 150,
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/attend.png",
                        height: 150,
                        width: 150,
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          "images/attend.png",
                          height: 200,
                          width: 200,
                        ),
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          "images/attend.png",
                          height: 150,
                          width: 150,
                        ),
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          "images/attend.png",
                          height: 150,
                          width: 150,
                        ),
                        onPressed: () {
                          // Add your onPressed functionality here
                        },
                      ),
                      Text("Notice Board",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
