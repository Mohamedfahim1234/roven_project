import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 100.0; // Standardized size for all images

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "images/notice.png",
                    height: 130,
                    width: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
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
      ),
    );
  }
}
