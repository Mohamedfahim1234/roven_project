import 'package:flutter/material.dart';

// ignore: camel_case_types
class menubar extends StatelessWidget {
  const menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/notice.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Notice Board",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[300]),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/attend.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Attendance",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[300]),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "images/crop.png",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "CIA Performance",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[300],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/SEA.png", height: 50, width: 50),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "SEA Performance",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue[300]),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
