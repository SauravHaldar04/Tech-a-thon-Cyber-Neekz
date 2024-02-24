import 'package:flutter/material.dart';
import 'package:techathon/screens/student_signup.dart';
import 'package:techathon/screens/student_signup_2.dart';
import 'package:techathon/screens/teacher_signup.dart';
import 'package:techathon/screens/user_type_selection.dart';
import 'package:techathon/screens/teacher_signup_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student-Teacher Portal',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      home: const UserTypeSelectionPage(),
    );
  }
}
