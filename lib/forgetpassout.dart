import 'package:flutter/material.dart';

class Forgetpassout extends StatelessWidget {
  const Forgetpassout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header Section
          Container(
            height: 350,
            width: 400,
            margin: EdgeInsets.only(top: 50, left: 30, right: 30),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/jitlogo-removedbg.png",
                    height: 115,
                    width: 115,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          "*",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "Roll No.",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 25, bottom: 5, right: 25),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter your Roll No',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue[900],
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        minimumSize:
                            Size.zero, // Allows button to shrink to content
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Reset Password"),
                    ),
                    SizedBox(width: 50), // Adjust spacing between buttons
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue[900],
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        minimumSize: Size.zero, // Ensures content-based size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Close"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
