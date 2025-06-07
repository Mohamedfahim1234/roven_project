import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubar.dart';
import 'package:flutter_application_1/profileforgetpassword.dart';

class ProfileScreen extends StatelessWidget {
  final TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w500);
  final TextStyle valueStyle = TextStyle(fontWeight: FontWeight.bold);

  ProfileScreen({super.key});

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 3, child: Text(label, style: labelStyle)),
          Expanded(flex: 5, child: Text(value, style: valueStyle)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PROFILE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menubar(),
                ),
              );
            },
            child: Text('Home', style: TextStyle(color: Colors.blue,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/profile.jpg',
              ), // Replace with your image path
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profileforgetpass(),
                  ),
                );
              },
              child: Text(
                'Change Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: SizedBox(height: 16),
            ),
            buildRow('Roll No', '210623205038'),
            buildRow('Name', 'RAKESH KUMAR'),
            buildRow('Admission No.', ''),
            buildRow('Register No.', '210623205038'),
            buildRow('Nationality', 'Indian'),
            buildRow('Religion', ''),
            buildRow('Community', ''),
            buildRow('Caste', ''),
            buildRow('Date of Joining', '01-01-2023'),
            buildRow('Batch', '2023-2027'),
            buildRow('Programme', 'B.Tech Information Technology'),
            buildRow('Semester', 'SEM IV'),
            buildRow('Department', 'Information Technology'),
            buildRow('Date of Birth', '08-07-2006'),
            buildRow('Gender', 'Male'),
            buildRow('Student Mobile No', '6381043150'),
            buildRow('Father Name', ''),
            buildRow('Father Mobile No', ''),
            buildRow('Mother Name', ''),
            buildRow('Mother Mobile No', ''),
            SizedBox(height: 20),
            Text(
              'If there is any correction in your personal details, Please contact the office.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
