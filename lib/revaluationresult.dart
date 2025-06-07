import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/menubar.dart';

void main() {
  runApp(const RevaluationApp());
}

class RevaluationApp extends StatelessWidget {
  const RevaluationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RevaluationResultPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RevaluationResultPage extends StatefulWidget {
  const RevaluationResultPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RevaluationResultPageState createState() => _RevaluationResultPageState();
}

class _RevaluationResultPageState extends State<RevaluationResultPage> {
  String? selectedOption;
  final List<String> options = [
    'Select Semester',
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8'
  ]; // Add real options here

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(1.0),
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
                            const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Text(
                                "210622205042",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child:  InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Loginpage(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Image.asset("images/loginouticon.jpg",
                                height: 15, width: 15),
                            ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Text(
                                "Login Time : 31-10-2024 14:08:27",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            const SizedBox(width: 5),
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

          // Main Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 1/4),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text(
                          'REVALUATION RESULT',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize:18),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Menubar()));
                          },
                          child: const Text("Home",style: TextStyle(color: Colors.blue),),
                        ),
                      ],
                    ),
                    ),
                  ),
                  const SizedBox(height: 40),
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedOption ?? options[0],
                        isExpanded: true,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedOption = newValue;
                          });
                        },
                        items: options.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                    ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      'No recent records',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            
        ],
      ),
      ),
    );
  }
}
