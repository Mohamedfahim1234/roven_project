import 'package:flutter/material.dart';

class Ciapage extends StatelessWidget {
  const Ciapage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(200, 148, 147, 150),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 80, left: 165),
                    child: Text(
                      "EXAM-CIA",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Home",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 2, 121, 177),
                          ))),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80, top: 30, left: 10),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Semester',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              value: 'SEM V1',
              items: [
                DropdownMenuItem(value: 'SEM V1', child: Text('SEM V1')),
                DropdownMenuItem(value: 'SEM V2', child: Text('SEM V2')),
                DropdownMenuItem(value: 'SEM V3', child: Text('SEM V3')),
              ],
              onChanged: (value) {
                // Handle dropdown value change
              },
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 50, top: 20, left: 5),
              child: DataTable(
                  headingRowColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                  border: TableBorder.all(
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 22, 22, 22)),
                  columnSpacing: 1,
                  horizontalMargin: 1,
                  headingRowHeight: 30,
                  dataRowHeight: 20,
                  columns: [
                    DataColumn(
                        label: Text("  Cours Code  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.grey))),
                    DataColumn(
                        label: Text("  Course Name  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.grey))),
                    DataColumn(
                        label: Text("  Internal Marks  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.grey))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                      DataCell(Text(" ")),
                    ]),
                  ]),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Assignment1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Assignment2",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Skill Based Test",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Assignment3",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Assignment4",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Skill Based Test1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Model Practical",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("")),
                          DataCell(Text("")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Lab Assesments",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Model Practical(only Lab)",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("CIE 1",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("CIE 2",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("CIE 1-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("CIE 2-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Model Exam",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("Modek Exam-Integrated",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("ASSIGNMENT1-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("ASSIGNMENT2-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("ASSIGNMENT3-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("ASSIGNMENT4-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("SKILL BASED TEST-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("LAB ASSESSMENT-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100, top: 20, left: 10),
                child: Text("SKILL BASED TEST1-INTEGRATED",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 30, left: 10),
                child: Container(
                  child: DataTable(
                      headingRowColor:
                          WidgetStateProperty.all<Color>(Colors.grey),
                      border: TableBorder.all(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 22, 22, 22)),
                      columnSpacing: 1,
                      horizontalMargin: 1,
                      headingRowHeight: 30,
                      // ignore: deprecated_member_use
                      dataRowHeight: 20,
                      columns: [
                        DataColumn(
                            label: Text(" Cours Code ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Course Name ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Conducted Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                        DataColumn(
                            label: Text(" Obtained Mark ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.grey,
                                    fontSize: 10))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                          DataCell(Text(" ")),
                        ]),
                      ]),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
