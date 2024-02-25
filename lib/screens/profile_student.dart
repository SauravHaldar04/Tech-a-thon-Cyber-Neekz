import 'package:flutter/material.dart';

class ProfileStudent extends StatelessWidget {
  const ProfileStudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
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
              'Student Name: Shlok Pete',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Year: TY-Btech',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            
            Text(
              'Age: 20',
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
