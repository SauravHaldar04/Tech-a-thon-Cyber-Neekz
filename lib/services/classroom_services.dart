import 'dart:async';
import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:techathon/global/globalvariables.dart';

class ClassroomServices {
  static Future<int> getStudentLength(
      String collegeYear, String division, String course) async {
    final connectionString =
        GlobalVariables.mongoUrl; // Replace with your actual URI

    try {
      final db = await Db.create(connectionString);
      await db.open();
      final studentCollection = db.collection('Students');
      // ... other collections
      // Perform operations (e.g., print Classroom collection)
      final student = await studentCollection.count(where
          .eq('course', course)
          .eq('year', collegeYear)
          .eq('division', division));
      print("Number of students are : $student");
      return student;
      // Close the connection
      await db.close();
    } catch (e) {
      print('Error connecting to MongoDB: $e');
      return -1;
    }
  }

  static Future allocateClassroom(
      int noOfStudents, String classType, int startTime) async {
    try {
      final connectionString =
          GlobalVariables.mongoUrl; // Replace with your actual URI
      final db = await Db.create(connectionString);
      await db.open();
      final classroomCollection = db.collection('Classrooms');
      final classroom = await classroomCollection.find({
        'total_capacity': {'\$lte': noOfStudents}
      }).toList();
      print(classroom);
    } catch (e) {
      print(e.toString());
    }
  }
}


  // Example usage
 

  // Example function to allocate classroom
  // Future<void> allocateClassroom(String teacherID, String course, int year, String division, String preferredTimeSlot) async {
  //   try {
  //     // Get teacher's preferred time slot
  //     var teacher = await teacherCollection.findOne(where.eq('Teacher ID', teacherID));
  //     if (teacher == null) {
  //       print('Teacher not found.');
  //       return;
  //     }

  //     // Get total number of students
  //     var totalStudents = await studentCollection.count(where
  //       .eq('course', course)
  //       .eq('year', year)
  //       .eq('division', division)
  //     );

  //     // Check if the classroom capacity is sufficient
  //     if (totalStudents > teacher['Allocation']) {
  //       print('Insufficient classroom capacity.');
  //       return;
  //     }

  //     // Check if the preferred time slot is available
  //     var classroom = await classroomCollection.findOne(where
  //       .eq('availability', true)
  //       .eq('time_start', preferredTimeSlot)
  //     );
  //     if (classroom == null) {
  //       print('Preferred time slot not available.');
  //       return;
  //     }

  //     // Allocate the classroom
  //     var allocation = {
  //       'classroom': classroom['_id'],
  //       'start_time': preferredTimeSlot,
  //       'end_time': classroom['time_end']
  //     };

  //     await teacherCollection.update(
  //       where.eq('_id', teacher['_id']),
  //       modify.push('allocation', allocation)
  //     );

  //     // Update classroom availability
  //     await classroomCollection.update(
  //       where.eq('_id', classroom['_id']),
  //       modify.set('availability', false)
  //     );

  //     print('Classroom allocated successfully.');
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  // // Example usage
  // await allocateClassroom('T001', 'Math', 2024, 'A', '08:00-10:00');

  // await db.close();




