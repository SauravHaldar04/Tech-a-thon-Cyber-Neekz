
      import 'package:flutter/material.dart';
import 'package:techathon/screens/classroom_input.dart';

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
            body: Column(
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
                Table(
                              border: TableBorder.all(),
                              children: [
                                TableRow(
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Time',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Monday',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Tuesday',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Wednesday',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Thursday',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        color: Colors.grey[200],
                                        child: const Text(
                                          'Friday',
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('9:00 AM'),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('Maths'),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('Science'),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('English'),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('History'),
                                      ),
                                    ),
                                    TableCell(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: const Text('Geography'),
                                      ),
                                    ),
                                  ],
                                ),
                                // Add more rows for the remaining time slots and days of the week
                              ],
                            ),
               
              ],
            ),
          );
        }
      }
       
   

