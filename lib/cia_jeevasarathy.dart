import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubar_prathipa.dart';

class Ciapage extends StatefulWidget {
  const Ciapage({super.key});

  @override
  State<Ciapage> createState() => _CiapageState();
}

class _CiapageState extends State<Ciapage> {
  String selectedSemester = 'SEM IV';

  final List<Map<String, String>> courseData = [
    {
      'courseCode': 'CS3452',
      'courseName': 'Theory of Computation',
      'internalMark': '33',
    },
    {
      'courseCode': 'CS3491',
      'courseName': 'Artificial Intelligence and Machine Learning',
      'internalMark': '44',
    },
    {
      'courseCode': 'CS3492',
      'courseName': 'Database Management Systems',
      'internalMark': '29',
    },
    {
      'courseCode': 'IT3401',
      'courseName': 'Web Essentials',
      'internalMark': '44',
    },
    {
      'courseCode': 'CS3451',
      'courseName': 'Introduction to Operating Systems',
      'internalMark': '31',
    },
  ];

  final List<Map<String, String>> assignment1Data = [
    {
      'courseCode': 'CS3452',
      'courseName': 'Theory of Computation',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
    {
      'courseCode': 'CS3492',
      'courseName': 'Database Management Systems',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
    {
      'courseCode': 'CS3451',
      'courseName': 'Introduction to Operating Systems',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
  ];

  final List<Map<String, String>> assignment2Data = [
    {
      'courseCode': 'CS3452',
      'courseName': 'Theory of Computation',
      'conductedMark': '10',
      'obtainedMark': '9',
    },
    {
      'courseCode': 'CS3492',
      'courseName': 'Database Management Systems',
      'conductedMark': '10',
      'obtainedMark': '8',
    },
    {
      'courseCode': 'CS3451',
      'courseName': 'Introduction to Operating Systems',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
  ];

  final List<Map<String, String>> assignment3Data = [
    {
      'courseCode': 'CS3452',
      'courseName': 'Theory of Computation',
      'conductedMark': '10',
      'obtainedMark': '9',
    },
    {
      'courseCode': 'CS3492',
      'courseName': 'Database Management Systems',
      'conductedMark': '10',
      'obtainedMark': '7',
    },
    {
      'courseCode': 'CS3451',
      'courseName': 'Introduction to Operating Systems',
      'conductedMark': '10',
      'obtainedMark': '8',
    },
  ];

  final List<Map<String, String>> assignment4Data = [
    {
      'courseCode': 'CS3452',
      'courseName': 'Theory of Computation',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
    {
      'courseCode': 'CS3492',
      'courseName': 'Database Management Systems',
      'conductedMark': '10',
      'obtainedMark': '9',
    },
    {
      'courseCode': 'CS3451',
      'courseName': 'Introduction to Operating Systems',
      'conductedMark': '10',
      'obtainedMark': '10',
    },
  ];

  Widget buildAssignmentSection(String title, List<Map<String, String>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...data.map((course) => Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Course Code: ${course['courseCode']}'),
                    Text('Course Name: ${course['courseName']}'),
                    Text('Conducted Mark: ${course['conductedMark']}'),
                    Text('Obtained Mark: ${course['obtainedMark']}'),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EXAM - CIA',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Menubar()),
                (route) => false,
              );
            },
            child: const Text(
              'Home',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DropdownButton<String>(
              value: selectedSemester,
              items: ['SEM I', 'SEM II', 'SEM III', 'SEM IV']
                  .map((sem) => DropdownMenuItem(
                        value: sem,
                        child: Text(sem),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedSemester = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Internal Marks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...courseData.map((course) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Course Code: ${course['courseCode']}'),
                        Text('Course Name: ${course['courseName']}'),
                        Text('Internal Mark: ${course['internalMark']}'),
                      ],
                    ),
                  ),
                )),
            buildAssignmentSection('Assignment 1', assignment1Data),
            buildAssignmentSection('Assignment 2', assignment2Data),
            buildAssignmentSection('Assignment 3', assignment3Data),
            buildAssignmentSection('Assignment 4', assignment4Data),
          ],
        ),
      ),
    );
  }
}
