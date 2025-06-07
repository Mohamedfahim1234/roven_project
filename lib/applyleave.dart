import 'package:flutter/material.dart';
import 'package:flutter_application_1/formforleave.dart';
import 'package:flutter_application_1/loginpage.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({super.key});

  Widget leaveCard({
    required String date,
    required String from,
    required String to,
    required String days,
    required String type,
    required String status,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 25,
            decoration: BoxDecoration(
              // color: Colors.blue,
              // borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
          infoRow("Date", date),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Text(
                  "Edit ",
                  style: TextStyle(color: Colors.blue),
                ), 
                Text(
                  "  Delete",
                  style: TextStyle(color: Colors.blue),
                ),
            ],
          ),
            ],
          ),
          ),
          infoRow("From", from),
          infoRow("To", to),
          infoRow("Days", days),
          infoRow("Type", type),
          infoRow("Status", status),
          
        ],
      ),
    );
  }

  Widget infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title : ",
              style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
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
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Welcome ",style: TextStyle(fontSize: 10,color: Colors.black)),
                            TextSpan(text: "Mohamed Fahim R",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                          ]
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("210622205042",
                                style: TextStyle(fontSize: 10)),
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
            // Navigation header

              
            const SizedBox(height: 16),
            // New Leave Button
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child:SizedBox(
                 height: MediaQuery.of(context).size.height * 0.04,
                 child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeaveApplicationPage()),
                    );
                  },
                  label: const Text("New"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30),
                  ),
                ),
                ),
              ),
            ),
            // Leave Cards
            leaveCard(
              date: "20-03-2025",
              from: "20-03-2025",
              to: "20-03-2025",
              days: "1.00",
              type: "Casual",
              status: "New",
            ),
            leaveCard(
              date: "26-10-2024",
              from: "26-10-2024",
              to: "26-10-2024",
              days: "1.00",
              type: "Casual",
              status: "New",
            ),
            leaveCard(
              date: "18-10-2024",
              from: "18-10-2024",
              to: "19-10-2024",
              days: "2.00",
              type: "Medical",
              status: "New",
            ),
          ],
        ),
      ),
      ),
    );
  }
}
