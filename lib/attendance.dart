import 'package:flutter/material.dart';
import 'package:flutter_application_1/menubar.dart';
import 'applyleave.dart';
import 'package:flutter_application_1/loginpage.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String selectedSemester = 'Semester 1';
  final List<String> semesters = [
    'Semester 1',
    'Semester 2',
    'Semester 3',
    'Semester 4',
    'Semester 5',
    'Semester 6',
    'Semester 7',
    'Semester 8',
  ];

  // On Duty Data
  final List<Map<String, String>> onDutyData = [
    {
      'from': '15-05-2025',
      'to': '15-05-2025',
      'days': '1.0',
      'type': 'Technical',
      'period': 'FN',
      'reason': 'Paper Presentation at Anna University'
    },
    {
      'from': '20-04-2025',
      'to': '20-04-2025',
      'days': '1.0',
      'type': 'Sports',
      'period': 'AN',
      'reason': 'Cricket Tournament at Zone Level'
    },
    {
      'from': '10-03-2025',
      'to': '11-03-2025',
      'days': '2.0',
      'type': 'Technical',
      'period': 'FN & AN',
      'reason': 'Workshop on AI/ML at IIT Madras'
    },
  ];

  void _showOnDutyDetails() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'On Duty Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      headingRowColor:
                          WidgetStateProperty.all(const Color(0xFFF5F5F5)),
                      columnSpacing: 20,
                      columns: const [
                        DataColumn(
                            label: Text('From',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('To',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Days',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Type',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Period',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text('Reason',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ],
                      rows: onDutyData.map((entry) {
                        return DataRow(
                          cells: [
                            DataCell(Text(entry['from']!)),
                            DataCell(Text(entry['to']!)),
                            DataCell(Text(entry['days']!)),
                            DataCell(Text(entry['type']!)),
                            DataCell(Text(entry['period']!)),
                            DataCell(Text(entry['reason']!)),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Column(
            children: [
          // Header with user info
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
              children: [
                Image.asset("images/jitlogo-removedbg.png",
                    height: 80, width: 80),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Welcome Mohamed Fahim R",
                          style: TextStyle(fontSize: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("210622205042", style: TextStyle(fontSize: 10)),
                          SizedBox(width: 5),
                          InkWell(
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Login Time : 31-10-2024 14:08:27",
                              style: TextStyle(fontSize: 10)),
                          SizedBox(width: 5),
                          Image.asset("images/timeicon.jpg",
                              height: 15, width: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("images/person-removedbg.png",
                      height: 60, width: 60),
                ),
              ],
            ),
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: 
              const Text(
                  "ATTENDANCE",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 1/4),
              Row(
                children: [
              // Home button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Menubar(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.indigo[400],
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ),    
                ],
              ),
            ],
          ),

        Expanded(
          child:Center(
            child:
        SingleChildScrollView(
          child:
          Column(
            children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ApplyLeave(),
                        ),
                      );
                    },
                    label: Text(
                      "Apply Leave",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                      ),
                    ),
                    ),
                    ],
                    ),

          // Semester dropdown and Apply Leave button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              
              children: [
                // Semester Dropdown
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.90,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: DropdownButton<String>(
                    value: selectedSemester,
                    icon: const Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    elevation: 16,
                    style: TextStyle(color: Colors.indigo[700], fontSize: 14),
                    underline: Container(height: 0),
                    onChanged: (String? value) {
                      setState(() {
                        selectedSemester = value!;
                      });
                    },
                    items:
                        semesters.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Table(
              border: TableBorder.all(color: Colors.white),
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(3),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                    TableCell(
                        child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("MONTH",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    )),
                    TableCell(
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("D",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    ),
                                    ),
                                    ),
                    TableCell(
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("A",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    ),
                                    ),),
                    TableCell(
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("P",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    ),
                                    ),
                                    ),
                                  
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("JAN",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("19",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("17",textAlign: TextAlign.center,),
                  ),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("FEB",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("18",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("1",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("17",textAlign: TextAlign.center,),
                  ),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("MAR",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("22",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("20",textAlign: TextAlign.center,),
                  ),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("APR",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("11",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("0",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("11",textAlign: TextAlign.center,),
                  ),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("TOT",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("70",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("5",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("65",textAlign: TextAlign.center,),
                  ),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("PERC",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("100",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("7.14",textAlign: TextAlign.center,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("92.86",textAlign: TextAlign.center,),
                  ),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Absent Details",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {
                    0: FlexColumnWidth(1), // Date column
                    1: FlexColumnWidth(4), // Period & Subject column
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      children: [
                        tableCell("Date", isHeader: true),
                        tableCell("Period & Subject", isHeader: true),
                      ],
                    ),
                    TableRow(children: [
                      tableCell("01-02-2025"),
                      tableCell(
                          "1-WE, 2-OS, 3-WE, 4-AIML, 5-TOC, 6-DBMS LAB, 7-DBMS LAB, 8-DBMS LAB"),
                    ]),
                    TableRow(children: [
                      tableCell("08-02-2025"),
                      tableCell(
                          "1-TOC, 2-AIML, 3-DBMS, 4-BOS, 5-ESS, 6-OS, 7-ESS, 8-OS"),
                    ]),
                    TableRow(children: [
                      tableCell("09-01-2025"),
                      tableCell(
                          "1-DBMS, 2-AIML, 3-WE, 4-AIML, 5-AIML, 6-OS LAB, 7-OS LAB, 8-OS"),
                    ]),
                    TableRow(children: [
                      tableCell("28-01-2025"),
                      tableCell(
                          "1-WE, 2-OS, 3-WE, 4-AIML, 5-TOC, 6-DBMS LAB, 7-DBMS LAB, 8-DBMS LAB"),
                    ]),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Leave Details",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(0.5),
                    3: FlexColumnWidth(1),
                    4: FlexColumnWidth(2),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      children: [
                        tableCell("From", isHeader: true),
                        tableCell("To", isHeader: true),
                        tableCell("Days", isHeader: true),
                        tableCell("Type", isHeader: true),
                        tableCell("Reason", isHeader: true),
                      ],
                    ),
                    tableRow("01-02-2025", "01-02-2025", "1.0", "Casual",
                        "Went to temple"),
                    tableRow("07-03-2025", "08-03-2025", "1.0", "Medical",
                        "Not feeling well"),
                    tableRow("09-01-2025", "09-01-2025", "1.0", "Casual",
                        "Bus missed"),
                    tableRow("28-01-2025", "28-01-2025", "1.0", "Medical",
                        "Due to stomach pain"),
                  ],
                ),
                SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: _showOnDutyDetails,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[400],
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      "Show On Duty Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),),),
            ]
      ),
      ),
    );
  }

  TableRow tableRow(String col1, String col2,
      [String col3 = "", String col4 = "", String col5 = ""]) {
    return TableRow(
      children: [
        tableCell(col1),
        tableCell(col2),
        tableCell(col3),
        tableCell(col4),
        tableCell(col5),
      ],
    );
  }

  Widget tableCell(String text, {bool isHeader = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}
