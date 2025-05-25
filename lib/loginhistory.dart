 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginHistoryPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginHistoryPage extends StatefulWidget {
  @override
  _LoginHistoryPageState createState() => _LoginHistoryPageState();
}

class _LoginHistoryPageState extends State<LoginHistoryPage> {
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN HISTORY'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Fields
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Login Date',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                    onTap: () => _pickDate(context, isStart: true),
                    controller: TextEditingController(
                        text: startDate == null
                            ? ''
                            : '${startDate!.toLocal()}'.split(' ')[0]),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'To',
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true,
                    onTap: () => _pickDate(context, isStart: false),
                    controller: TextEditingController(
                        text: endDate == null
                            ? ''
                            : '${endDate!.toLocal()}'.split(' ')[0]),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Search action
                  },
                  child: Text('Search'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(),
            // Table Header
            Row(
              children: const [
                Expanded(flex: 2, child: Text('IP Address', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(flex: 2, child: Text('Login Time', style: TextStyle(fontWeight: FontWeight.bold))),
                Expanded(flex: 2, child: Text('Logout Time', style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            Divider(),
            // Table Content
            Expanded(
              child: Center(
                child: Text('No recent records'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickDate(BuildContext context, {required bool isStart}) async {
    DateTime? datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (datePicked != null) {
      setState(() {
        if (isStart) {
          startDate = datePicked;
        } else {
          endDate = datePicked;
        }
      });
    }
  }
}