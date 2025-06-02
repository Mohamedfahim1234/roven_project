import 'package:flutter/material.dart';
import 'menubar_prathipa.dart';

void main() {
  runApp(const NoticeBoardApp());
}

class NoticeBoardApp extends StatelessWidget {
  const NoticeBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoticeBoardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: use_key_in_widget_constructors
class NoticeBoardScreen extends StatelessWidget {
  final List<Map<String, String>> notices = [
    {
      'date': '30 - May - 2025',
      'message':
          'IMPORTANT: End Semester Examination Schedule for June 2025 has been published. Please check your exam timetable in the portal.',
      'by': 'JIT CoE OFFICE'
    },
    {
      'date': '25 - May - 2025',
      'message':
          'Revaluation results for April 2025 examinations have been published. Students can check their results in the Revaluation Results section.',
      'by': 'JIT CoE OFFICE'
    },
    {
      'date': '20 - May - 2025',
      'message':
          'Dear Students,\nAll examination-related activities must be conducted through the student portal. This includes leave applications and OD requests. Please ensure you submit all requests through your login credentials only.',
      'by': 'JIT EXAMCELL'
    },
    {
      'date': '15 - May - 2025',
      'message':
          'CIA-3 marks have been published. Students can view their performance in the CIA Performance section.',
      'by': 'JIT EXAMCELL'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NOTICE BOARD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menubar()),
              );
            },
            child: const Text(
              'Home',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
        elevation: 4,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: notices.length,
        itemBuilder: (context, index) {
          final notice = notices[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F7),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notice['date']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  notice['message']!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  notice['by']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
