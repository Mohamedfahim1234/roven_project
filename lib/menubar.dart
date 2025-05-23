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
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/notice.png",
                        height: 80,
                        width: 80,
                      ),
                      Text("Notice Board"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/attend.png",
                        height: 80,
                        width: 80,
                      ),
                      Text("Attendance"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/crop.png",
                        height: 80,
                        width: 80,
                      ),
                      Text("CIA Performance"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/application.jpeg",
                        height: 50,
                        width: 50,
                      ),
                      Text("SEA Performance"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/exam app.jpeg",
                        height: 70,
                        width: 70,
                      ),
                      Text("Exam Application"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/revaluation.jpeg",
                        height: 80,
                        width: 80,
                      ),
                      Text("Revaluation Result"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/profile.jpeg",
                        height: 70,
                        width: 70,
                      ),
                      Text("Profile")
                    ],
                  )
                ],
                 ),
            ),
             SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/support.jpeg",
                        height: 70,
                        width: 70,
                      ),
                      Text("Support")
                    ],
                  )
                ],
                 ),
            ),
             SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/login.jpeg",
                        height: 70,
                        width: 70,
                      ),
                      Text("Login History")
                    ],
                  )
                ],
                 ),
            ),
             SizedBox(
              height: 100,
              width: 100,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "images/log.jpeg",
                        height: 70,
                        width: 70,
                      ),
                      Text("Logout")
                    ],
                  )
                ],
                 ),
            )
          ]),
        ),
      ),
    );
  }
}