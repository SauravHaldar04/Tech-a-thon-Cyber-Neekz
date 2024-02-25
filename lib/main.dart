import 'package:flutter/material.dart';
import 'package:techathon/screens/dashboard_student.dart';
import 'package:techathon/screens/dashboard_teacher.dart';

import 'package:techathon/screens/user_type_selection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: const StudentDashboard(),
    );
  }
}
