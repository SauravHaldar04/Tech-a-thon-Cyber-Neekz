import 'package:flutter/material.dart';
import 'card_tt.dart';

class StudentScroll extends StatelessWidget {
  const StudentScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const  SingleChildScrollView(
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
            );
  }
}