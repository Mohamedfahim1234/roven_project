import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 255),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "JEPPIAAR INSTITUTE OF TECHNOLOGY(AUTONOMOUS)\nKunnam,TK,Sunguvarchatram,Sriperumbudur\nPhone:044-27159000\nEmail",
          ),
          Column(children: [Image.asset("image/pm.png")]),
        ],
      ),
    );
  }
}
