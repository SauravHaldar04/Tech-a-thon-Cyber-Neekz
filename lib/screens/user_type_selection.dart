import 'package:flutter/material.dart';
import 'package:techathon/screens/student_signup.dart';
import 'package:techathon/screens/teacher_signup.dart';

class UserTypeSelectionPage extends StatelessWidget {
  const UserTypeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Type Selection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentSignupPage(),
                  ),
                );
              },
              child: const Text('I am a Student'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TeacherSignupPage(),
                  ),
                );
              },
              child: const Text('I am a Teacher'),
            ),
          ],
        ),
      ),
    );
  }
}