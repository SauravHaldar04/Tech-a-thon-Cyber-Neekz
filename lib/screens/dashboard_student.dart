import 'package:flutter/material.dart';
// import 'package:techathon/screens/classroom_input.dart';
import 'package:techathon/widgets/card_tt.dart';
      import 'user_type_selection.dart';

      class StudentDashboard extends StatelessWidget {
        const StudentDashboard({Key? key});

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text(
                'Student Dashboard',
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
                        color: Color.fromARGB(255, 255, 255, 255),
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
            
            body: const SingleChildScrollView(
              child: Column(
                children: [
                 
                  SingleChildScrollView(
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
                  )
                  
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(top:4),
              child: BottomNavigationBar(
                backgroundColor: 
                Colors.white,
                selectedFontSize: 10,
                iconSize: 35,
                onTap: (value) {},
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Color.fromRGBO(241, 123, 55, 1),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,
                      color: Color.fromRGBO(241, 123, 55, 1),
                    ),
                    label: 'Cart',
                  ),
                ],
              ),
            ),
          );
        }
      }
