import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 100.0; // Standardized size for all images

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Container
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Logo
                  Image.asset(
                    "images/jitlogo-removedbg.png",
                    height: 80,
                    width: 80,
                  ),
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
                                child: Text(
                                  "Welcome Mohamed Fahim R",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  "210622205042",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Image.asset(
                                  "images/loginouticon.jpg",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  "Login Time : 31-10-2024 14:08:27",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(width: 5),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Image.asset(
                                  "images/timeicon.jpg",
                                  height: 15,
                                  width: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      "images/person-removedbg.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            // Existing Menu Items
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Image.asset(
                      "images/notice.png",
                      height: 130,
                      width: 130,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Notice Board",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        "images/attend.png",
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Attendance",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 150, // Increased height
                      width: 150, // Increased width
                      child: Image.asset(
                        "images/crop.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "CIA Performance",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/application.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "SEA Performance",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/exam app.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Exam Application",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/revaluation.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Revaluation Result",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/profile.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/support.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Support",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: imageSize,
                      width: imageSize,
                      child: Image.asset(
                        "images/login.jpeg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login History",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "images/log.jpeg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
