import 'package:flutter/material.dart';
// import 'package:techathon/screens/dashboard_teacher.dart';

class CreateClassroomPage extends StatefulWidget {
  const CreateClassroomPage({super.key});

  @override
  _CreateClassroomPageState createState() => _CreateClassroomPageState();
}

class _CreateClassroomPageState extends State<CreateClassroomPage> {
  int numberOfBenches = 0;
  int benchCapacity = 0;
  String course = '';
  String lectureTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Classroom'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Number of Benches:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  numberOfBenches = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Text('Bench Capacity:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  benchCapacity = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Text('Course:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  course = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            Text('Lecture Time:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  lectureTime = value;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement logic to create classroom with the entered details
              },
              child: const Text('Create'),
            ),
            
          ],
        ),
      ),
    );
  }
}