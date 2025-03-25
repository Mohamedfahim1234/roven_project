import 'package:flutter/material.dart';

class Forgetpassout extends StatelessWidget {
  const Forgetpassout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset(
      //     "images/jitlogo-removedbg.png",
      //     height: 50,
      //     width: 50,
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 18, right: 10),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Text(
      //                 "welcome Mohamed Fahim R",
      //                 style: TextStyle(
      //                   fontSize: 10,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Text(
      //             "210622205042",
      //             style: TextStyle(
      //               fontSize: 10,
      //             ),
      //           ),
      //             Text(
      //             "Login Time : 31-10-2024 14:08:27",
      //             style: TextStyle(fontSize: 10),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(right: 10, top: 10),
      //       child: Container(child: Image.asset("images/person-removedbg.png")),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 2, color: Colors.blue[900] ?? Colors.blue),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/jitlogo-removedbg.png",
                    height: 80, width: 80),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text("Welcome Mohamed Fahim R",
                                  style: TextStyle(fontSize: 10)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text("210622205042",
                                  style: TextStyle(fontSize: 10)),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Image.asset("images/loginouticon.jpg",
                                  height: 15, width: 15),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Text("Login Time : 31-10-2024 14:08:27",
                                  style: TextStyle(fontSize: 10)),
                            ),
                            SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Image.asset("images/timeicon.jpg",
                                  height: 15, width: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Image.asset("images/person-removedbg.png",
                      height: 60, width: 60),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
