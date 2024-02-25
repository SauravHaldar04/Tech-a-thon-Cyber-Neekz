import 'package:flutter/material.dart';
import 'package:techathon/screens/dashboard_teacher.dart';

class ProfileTeacher extends StatelessWidget {
  const ProfileTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Teacher Profile"),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            // Replace with the desired page navigation logic
            Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const TeacherDashboard(),
    ),
  );;
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Teacher Name: Prof. Naresh Afre',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Designation: Assistant Professor',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Course: Data Structures and Algorithms',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            // Add other required information here
          ],
        ),
      ),
    );
  }
}