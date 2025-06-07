import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendance.dart';
import 'package:flutter_application_1/cia.dart';
import 'package:flutter_application_1/examapplication1.dart';
import 'package:flutter_application_1/loginhistory.dart';
import 'package:flutter_application_1/noticeboard.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/revaluationresult.dart';
import 'package:flutter_application_1/sea.dart';
import 'package:flutter_application_1/support.dart';
import 'loginpage.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 100.0;
    Widget buildMenuItem(
        String imagePath, String label, VoidCallback onPressed) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: onPressed,
          child: Column(
            children: [
              Container(
                height: imageSize,
              width: imageSize,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
          ],
        ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
      body: Column(
          children: [
            // Header
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.blue[900] ?? Colors.blue,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset("images/jitlogo-removedbg.png",
                      height: 80, width: 80),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Welcome Mohamed Fahim R",
                            style: TextStyle(fontSize: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("210622205042",
                                style: TextStyle(fontSize: 10)),
                            SizedBox(width: 5),
                           InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Loginpage(),
                                ),
                                (route) => false,
                              );
                            },
                            child: Image.asset("images/loginouticon.jpg",
                                height: 15, width: 15),
                          ),
                        ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Login Time : 31-10-2024 14:08:27",
                                style: TextStyle(fontSize: 10)),
                            SizedBox(width: 5),
                            Image.asset("images/timeicon.jpg",
                                height: 15, width: 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("images/person-removedbg.png",
                        height: 60, width: 60),
                  ),
                ],
              ),
            ),
            // Centered Menu Items
            Expanded(
                  child: SingleChildScrollView(
                  child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        buildMenuItem("images/notice.png", "Notice Board", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoticeBoardApp()),
                      );
                    }),
                    buildMenuItem("images/attend.png", "Attendance", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Attendance()),
                      );
                    }),
                    buildMenuItem("images/crop.png", "CIA Performance", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ciapage()),
                      );
                    }),
                    buildMenuItem("images/application.jpeg", "SEA Performance",
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Seapage()),
                      );
                    }),
                    buildMenuItem("images/exam app.jpeg", "Exam Application",
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ExamApplicationApp()));
                    }),
                    buildMenuItem(
                        "images/revaluation.jpeg", "Revaluation Result", () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RevaluationApp()));
                    }),
                    buildMenuItem("images/profile.jpeg", "Profile", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ProfileScreen()));
                    }),
                    buildMenuItem("images/support.jpeg", "Support", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Support()));
                    }),
                    buildMenuItem("images/login.jpeg", "Login History", () {
                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginHistoryPage(),
                                ),
                              );
                    }),
                    buildMenuItem("images/log.jpeg", "Logout", () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Loginpage()));
                    }),
                    ],
                  ),
                  ],
                ),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
