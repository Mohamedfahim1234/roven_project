import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  late List<Employee> employees;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
  }

  // Create some example data for the table
  List<Employee> getEmployeeData() {
    return [
      Employee('John Doe', 'Present'),
      Employee('Jane Smith', 'Absent'),
      Employee('David Johnson', 'Present'),
      Employee('Emily Davis', 'Absent'),
    ];
  }

  // Create a data grid source
  EmployeeDataSource getDataSource() {
    return EmployeeDataSource(employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Home",
              style: TextStyle(color: Colors.indigo[300]),
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 115),
                child: Text(
                  "ATTENDANCE",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text(
                    "Apply Leave",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Absent Details",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(
            child: SfDataGrid(
              source: getDataSource(),
              columns: [
                GridColumn(
                  columnName: 'name',
                  label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Employee Name'),
                  ),
                ),
                GridColumn(
                  columnName: 'status',
                  label: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text('Attendance Status'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Employee model
class Employee {
  Employee(this.name, this.status);

  final String name;
  final String status;
}

// Employee data source for the SfDataGrid
class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(this.employees);

  final List<Employee> employees;

  @override
  List<DataGridRow> get rows => employees
      .map<DataGridRow>((employee) => DataGridRow(cells: [
            DataGridCell<String>(columnName: 'name', value: employee.name),
            DataGridCell<String>(columnName: 'status', value: employee.status),
          ]))
      .toList();

  @override
  DataGridRowAdapter buildDataGridRowAdapter(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(e.value.toString()),
        );
      }).toList(),
    );
  }
}
