import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubar_prathipa.dart';

class Seapage extends StatefulWidget {
  const Seapage({super.key});

  @override
  State<Seapage> createState() => _SeapageState();
}

class _SeapageState extends State<Seapage> {
  String selectedMonthYear = 'Nov/Dec-2024';

  final List<Map<String, String>> seaResults = [
    {
      'sno': '1',
      'code': 'CS3691',
      'name': 'Embedded System and IoT',
      'grade': 'B+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '2',
      'code': 'CCS334',
      'name': 'Big Data Analysis',
      'grade': 'B+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '3',
      'code': 'CS3551',
      'name': 'Distributed Computing',
      'grade': 'B+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '4',
      'code': 'CCS335',
      'name': 'Cloud Computing',
      'grade': 'B+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '5',
      'code': 'IT3511',
      'name': 'Full Stack Development Laboratory',
      'grade': 'A+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '6',
      'code': 'CS3591',
      'name': 'Computer Networks',
      'grade': 'A',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '7',
      'code': 'IT3501',
      'name': 'Full Stack Web Development',
      'grade': 'B+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
    {
      'sno': '8',
      'code': 'MX3082',
      'name': 'Elements of Literature',
      'grade': 'A+',
      'result': 'P',
      'monthYear': 'NOV24'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EXAM - SEA',
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
              value: selectedMonthYear,
              items: ['Nov/Dec-2024', 'Apr/May-2024']
                  .map((sem) => DropdownMenuItem(
                        value: sem,
                        child: Text(sem),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedMonthYear = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ...seaResults.map((course) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('S.No        : ${course['sno']}'),
                        Text('Code        : ${course['code']}'),
                        Text('Name        : ${course['name']}'),
                        Text('Grade       : ${course['grade']}'),
                        Text('Result      : ${course['result']}'),
                        Text('Month & Year: ${course['monthYear']}'),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
