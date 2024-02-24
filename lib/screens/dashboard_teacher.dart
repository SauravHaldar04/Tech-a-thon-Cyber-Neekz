
      import 'package:flutter/material.dart';
import 'package:techathon/screens/classroom_input.dart';
import 'package:techathon/widgets/card_tt.dart';
      import 'user_type_selection.dart';

      class Dashboard extends StatelessWidget {
        const Dashboard({Key? key});

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 155, 99, 1),
                      Color.fromRGBO(255, 98, 31, 1)
                    ],
                    stops: [0.1, 1],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 155, 99, 1),
                          Color.fromRGBO(255, 98, 31, 1)
                        ],
                        stops: [0.1, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Sign Out'),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserTypeSelectionPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateClassroomPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 16.0,
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      icon: Icon(Icons.add),
                      label: const Text('Create Classroom'),
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                      CustomCard(classroomNo: '101', course: 'Maths', timing: '8am-9am', branchDiv: 'SY-Btech'),
                      CustomCard(classroomNo: '102', course: 'History', timing: '10am-11am', branchDiv: 'TY-Btech'),
                      CustomCard(classroomNo: '103', course: 'DBMS', timing: '12pm-1pm', branchDiv: 'FY-Btech'),
                      CustomCard(classroomNo: '104', course: 'DSA', timing: '2pm-3pm', branchDiv: 'FY-Btech'),
                      CustomCard(classroomNo: '105', course: 'FLAT', timing: '3pm-4pm', branchDiv: 'TY-Btech'),
                      CustomCard(classroomNo: '108', course: 'FLAT', timing: '3pm-4pm', branchDiv: 'TY-Btech'),
                      CustomCard(classroomNo: '102', course: 'FLAT', timing: '3pm-4pm', branchDiv: 'TY-Btech')
                        ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
      }
