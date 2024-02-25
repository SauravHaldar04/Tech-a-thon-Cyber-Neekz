import 'package:flutter/material.dart';
import 'package:techathon/screens/chatHelp.dart';
// import 'package:techathon/screens/chatHelp.dart';
import 'package:techathon/screens/profile_student.dart';
import 'package:techathon/widgets/studentScrollDB.dart';
// import 'package:techathon/screens/classroom_input.dart';
// import 'package:techathon/widgets/card_tt.dart';
// import 'package:techathon/widgets/studentScrollDB.dart';
      import 'user_type_selection.dart';

      class StudentDashboard extends StatefulWidget {
        const StudentDashboard({Key? key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int currentPage=0;
  List<Widget> pages = const [ StudentScroll(), ProfileStudent(),SplashScreen()];

   
   
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
            
            body: pages[currentPage],
            
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.only(top:4),
              child: BottomNavigationBar(
                
                onTap: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                currentIndex: currentPage,
                unselectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                selectedFontSize: 13,
                unselectedFontSize: 13,
                iconSize: 35,
               
                items: const [
                  BottomNavigationBarItem(

                    icon: Icon(
                      Icons.home,
                      color: Color.fromRGBO(255, 98, 31, 1),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      
                      Icons.person,
                      color: Color.fromRGBO(255, 98, 31, 1),
                    ),
                    label: 'Profile',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,
                      color: Color.fromRGBO(255, 98, 31, 1),
                    ),
                    label: 'Chat',
                  ),
                ],
              ),
            ),
          );
        }
}
