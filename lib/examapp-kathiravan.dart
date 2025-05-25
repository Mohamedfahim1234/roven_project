import 'package:flutter/material.dart';

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(228, 173, 167, 167),
                    ),
                    child: const Text(
                      "EXAM APPLICATION",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Form fields
                  Center(
                    child: Container(
                      width: 500, // Fixed width for form section
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          buildFormField("Roll No.:", Colors.green.shade800),
                          const SizedBox(height: 20),
                          buildFormField("Name:", Colors.green.shade800),
                          const SizedBox(height: 20),
                          buildFormField("Email:", Colors.green.shade800),
                          const SizedBox(height: 20),
                          buildFormField("Mobile:", Colors.green.shade800),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30), // Date
                  Center(
                    child: Text(
                      "Nov/Dec-2026",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(height: 30),
                  // Regular Subjects
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Regular Subjects",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // DataTable section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22),
                        ),
                        columnSpacing: 40,
                        headingRowHeight: 30,
                        // ignore: deprecated_member_use
                        dataRowHeight: 20,
                        columns: const [
                          DataColumn(
                            label: Text("Semester",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          DataColumn(
                            label: Text("Course Code",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          DataColumn(
                            label: Text("Course Name",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          DataColumn(
                            label: Text("Amount Rs.",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Text("I")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("II")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("III")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("IV")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("V")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("VI")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("VII")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                          DataRow(cells: [
                            DataCell(Text("VIII")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                            DataCell(Text("")),
                          ]),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  // Grand Total
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: DataTable(
                        border: TableBorder.all(
                          color: Color.fromARGB(255, 10, 10, 10),
                        ),
                        columnSpacing: 80,
                        columns: const [
                          DataColumn(label: Text("Grand Total")),
                          DataColumn(label: Text("0")),
                        ],
                        rows: const [],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  // Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blueAccent),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Color.fromARGB(255, 242, 245, 248),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blueAccent),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Close",
                          style: TextStyle(
                            color: Color.fromARGB(255, 242, 245, 248),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildFormField(String label, Color color) {
    return Row(
      children: [
        const Text(
          "*",
          style: TextStyle(color: Colors.red),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 80, // Fixed width for labels
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 22, 22, 22),
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
