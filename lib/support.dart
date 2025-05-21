import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 255),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "JEPPIAAR INSTITUTE OF TECHNOLOGY(AUTONOMOUS)\nKunnam,TK,Sunguvarchatram,Sriperumbudur\nPhone:044-27159000\nEmail:office@jeppiaarinstitute.org",
              style: TextStyle(fontSize: 10),
            ),
          ),
          Image.asset(
            "images/pmm.png",
            height: 60,
            width: 50,
          ),
        ],
      ),
    );
  }
}
