import 'package:flutter/material.dart';
import 'package:flutter_application_1/examapp.dart';
import 'package:flutter_application_1/forgetpassout.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'Profile Page',
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
=======
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const ExamApp(),
      home: Forgetpassout(),
>>>>>>> 7edfb63a682a30b3e22d902fc03cb2aa063cba1a
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w500);
  final TextStyle valueStyle = TextStyle(fontWeight: FontWeight.bold);

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
        title: Text('PROFILE'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Home', style: TextStyle(color: Colors.white)),
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
              onPressed: () {},
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
