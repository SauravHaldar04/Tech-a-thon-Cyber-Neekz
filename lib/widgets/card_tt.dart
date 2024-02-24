import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String classroomNo;
  final String course;
  final String timing;
  final String branchDiv;

  const CustomCard({
    required this.classroomNo,
    required this.course,
    required this.timing,
    required this.branchDiv,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white, // Set orange light background color
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 123, 55, 1), // Set orange light background color
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Text('Classroom No: $classroomNo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white // Set timing text to bold
                        ),),
                        
                  
                      Text(
                        'Timing: $timing',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white
                           // Set timing text to bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8), // Add spacing
              
              Text('Course: $course',style: TextStyle(fontSize: 16 ),),
              Text('Branch/Div: $branchDiv',style: TextStyle(fontSize: 16 ),),
            ],
          ),
        ),
      ),
    );
  }
}
