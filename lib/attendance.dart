
import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text("Home",style: TextStyle(color: Colors.indigo[300]),),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
               child: Padding(
                 padding: const EdgeInsets.only(left: 115),
                 child: Text("ATTENDANCE",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
               ),
        )
        
            
             
          ],
        ),
      ),
    body:
    Column(
      children: [
        Row(
          children: [
           Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text("Apply Leave",style: TextStyle(fontSize: 15,color: Colors.indigo,fontWeight: FontWeight.bold),),
          ),
        )
          ],
        ),
      

        

          Padding(padding: const EdgeInsets.all(16),
          child: Table(
            border: TableBorder.all(),
          columnWidths:{0:FlexColumnWidth(2),
                        1:FlexColumnWidth(3),
                        2:FlexColumnWidth(2),
                        3:FlexColumnWidth(2),},
          children: [
            TableRow(
              decoration:BoxDecoration(color:Colors.white),
              children: [
                TableCell(child: 
                    Center(
                      child: Text("MONTH",
                      style:TextStyle(fontWeight: FontWeight.bold)),
                    )),
                    TableCell(child:Center(child: Text ("D",style:TextStyle(fontWeight: FontWeight.bold)))),
                    TableCell(child:Center(child: Text ("A",style:TextStyle(fontWeight: FontWeight.bold)))),
                    TableCell(child:Center(child: Text("p",style:TextStyle(fontWeight: FontWeight.bold)))),
              ],
              ),
              TableRow(
                children: [
                  Text("JAN"),
                  Text("19"),
                  Text("2"),
                  Text("17"),
                ]),

                 TableRow(
                children: [
                  Text("FEB"),
                  Text("18"),
                  Text("1"),
                  Text("17"),
                ]),

                 TableRow(
                children: [
                  Text("MAR"),
                  Text("22"),
                  Text("2"),
                  Text("20"),
                ]),

                 TableRow(
                children: [
                  Text("APR"),
                  Text("11"),
                  Text("0"),
                  Text("11"),
                ]),

                 TableRow(
                children: [
                  Text("TOT"),
                  Text("70"),
                  Text("5"),
                  Text("65"),
                ]),

                 TableRow(
                children: [
                  Text("PERC"),
                  Text("100"),
                  Text("7.14"),
                  Text("92.86"),
                ]),

          ],),),
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
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(3),
                  2: FlexColumnWidth(5),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(2),
                },
                 children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    children: [
                      Text("Date"),
                      Text("Period & Subject"),
                    ],
                  ),
                tableRow("01-02-2025", "1-WE, 2-OS, 3-WE, 4-AIML, 5-TOC, 6-DBMS LAB, 7-DBMS LAB, 8-DBMS LAB"),
                  tableRow("08-02-2025", "1-TOC, 2-AIML, 3-DBMS, 4-BOS, 5-ESS, 6-OS, 7-ESS, 8-OS"),
                  tableRow("09-01-2025", "1-DBMS, 2-AIML, 3-WE, 4-AIML, 5-AIML, 6-OS LAB, 7-OS LAB, 8-OS"),
                  tableRow("28-01-2025", "1-WE, 2-OS, 3-WE, 4-AIML, 5-TOC, 6-DBMS LAB, 7-DBMS LAB, 8-DBMS LAB"),
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
                  tableRow("01-02-2025", "01-02-2025", "1.0", "Casual", "Went to temple"),
                  tableRow("07-03-2025", "08-03-2025", "1.0", "Medical", "Not feeling well"),
                  tableRow("09-01-2025", "09-01-2025", "1.0", "Casual", "Bus missed"),
                  tableRow("28-01-2025", "28-01-2025", "1.0", "Medical", "Due to stomach pain"),
                ],
              ),
  SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Show On Duty Details"),
                ),
              ),
            ],
          ),
        ),
      ]
    ),

    );
  }
 TableRow tableRow(String col1, String col2, [String col3 = "", String col4 = "", String col5 = ""]) {
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