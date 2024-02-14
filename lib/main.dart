import 'package:flutter/material.dart';
import 'package:gdsc_solution_project/classesstored.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Declare variables to store text field inputs
  String currentInstitution = '';
  String transferInstitution = '';
  String transferYear = '';
  String major = '';
  String degreePlan = '';
  String FName = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferwise'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            // Overlay the text fields on top of the title bar
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // TextField 1
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Full Name:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            FName = value; // Store input value
                            print(FName);
                          },
                        ),
                      ),
                      // TextField 2
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'What is your major?: ',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            major = value; // Store input value
                            print(major);
                          },
                        ),
                      ),
                      // TextField 3
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Transfer year:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            transferYear = value; // Store input value
                            print(transferYear);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Added SizedBox for spacing
                  // Major TextField

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Current institution:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            currentInstitution = value;
                            print(currentInstitution); // Store input value
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Transfer Institution:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            transferInstitution = value; // Store input value
                            print(transferInstitution);
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'What is your degree plan? : ',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            degreePlan = value; // Store input value
                            print(degreePlan);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Result box
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height +
                  150,
              left: 0,
              right: 0,
              child: Container(
                width: 600,
                height: 400,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Results will be shown here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    StorageForClasses u1 = new StorageForClasses(FName, 0);
  }
}





/*


import 'package:flutter/material.dart';
import 'package:gdsc_solution_project/classesstored.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Declare variables to store text field inputs
  String currentInstitution = '';
  String transferInstitution = '';
  String transferYear = '';
  String major = '';
  String degreePlan = '';
  String FName = "";
  // StorageForClasses u1 = new StorageForClasses();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Transferwise'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            // Overlay the text fields on top of the title bar
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // TextField 1
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Current institution:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            currentInstitution = value;
                            print(currentInstitution); // Store input value
                          },
                        ),
                      ),
                      // TextField 2
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Transfer Institution:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            transferInstitution = value; // Store input value
                            print(transferInstitution);
                          },
                        ),
                      ),
                      // TextField 3
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Transfer year:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            transferYear = value; // Store input value
                            print(transferYear);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Added SizedBox for spacing
                  // Major TextField

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter Full Name:',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            FName = value; // Store input value
                            print(FName);
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'What is your major?: ',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            major = value; // Store input value
                            print(major);
                          },
                        ),
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'What is your degree plan? : ',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                          onChanged: (value) {
                            degreePlan = value; // Store input value
                            print(degreePlan);
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Result box
            Positioned(
              top: MediaQuery.of(context).padding.top +
                  AppBar().preferredSize.height +
                  150,
              left: 0,
              right: 0,
              child: Container(
                width: 600,
                height: 400,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Results will be shown here',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/