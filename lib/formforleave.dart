import 'package:flutter/material.dart';

void main() {
  runApp(const LeaveApp());
}

class LeaveApp extends StatelessWidget {
  const LeaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LeaveApplicationPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LeaveApplicationPage extends StatefulWidget {
  const LeaveApplicationPage({super.key});

  @override
  State<LeaveApplicationPage> createState() => _LeaveApplicationPageState();
}

class _LeaveApplicationPageState extends State<LeaveApplicationPage> {
  DateTime applyDate = DateTime.now();
  DateTime? fromDate;
  DateTime? toDate;
  String dayType = 'Full Day';
  String halfDaySession = 'FN';
  final reasonController = TextEditingController();

  Future<void> selectDate(BuildContext context, bool isFrom) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: applyDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        if (isFrom) {
          fromDate = picked;
        } else {
          toDate = picked;
        }
      });
    }
  }

  void submitForm() {
    String summary = '''
Apply Date: ${applyDate.toLocal().toString().split(' ')[0]}
From: ${fromDate != null ? fromDate!.toLocal().toString().split(' ')[0] : ''}
To: ${toDate != null ? toDate!.toLocal().toString().split(' ')[0] : ''}
Type: $dayType ${dayType == 'Half Day' ? '($halfDaySession)' : ''}
Reason: ${reasonController.text}
''';
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Leave Submitted'),
        content: Text(summary),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: const Text('Leave Application'),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Apply Date: ${applyDate.toLocal().toString().split(' ')[0]}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),

            // From Date
            ListTile(
              title: const Text('From Date'),
              subtitle: Text(fromDate != null
                  ? fromDate!.toLocal().toString().split(' ')[0]
                  : 'Select Date'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () => selectDate(context, true),
            ),

            // To Date
            ListTile(
              title: const Text('To Date'),
              subtitle: Text(toDate != null
                  ? toDate!.toLocal().toString().split(' ')[0]
                  : 'Select Date'),
              trailing: const Icon(Icons.calendar_today),
              onTap: () => selectDate(context, false),
            ),

            const SizedBox(height: 16),

            // Full Day / Half Day
            const Text("Leave Type",
                style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                Radio<String>(
                  value: 'Full Day',
                  groupValue: dayType,
                  onChanged: (value) => setState(() => dayType = value!),
                ),
                const Text('Full Day'),
                Radio<String>(
                  value: 'Half Day',
                  groupValue: dayType,
                  onChanged: (value) => setState(() => dayType = value!),
                ),
                const Text('Half Day'),
              ],
            ),

            // FN/AN if Half Day
            if (dayType == 'Half Day')
              Row(
                children: [
                  Radio<String>(
                    value: 'FN',
                    groupValue: halfDaySession,
                    onChanged: (value) =>
                        setState(() => halfDaySession = value!),
                  ),
                  const Text('FN'),
                  Radio<String>(
                    value: 'AN',
                    groupValue: halfDaySession,
                    onChanged: (value) =>
                        setState(() => halfDaySession = value!),
                  ),
                  const Text('AN'),
                ],
              ),

            const SizedBox(height: 16),

            // Reason
            const Text("Reason", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              controller: reasonController,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter reason for leave',
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: submitForm,
              child: const Text('Submit Leave'),
            )
          ],
        ),
      ),
    );
  }
}
