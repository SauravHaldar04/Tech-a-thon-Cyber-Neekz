import 'dart:async';
import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';

class ClassroomServices {
  static Future<void> main() async {
    final connectionString =
        'mongodb+srv://user1:abcd@techathon.snbtxqs.mongodb.net/Techathonn?retryWrites=true&w=majority&appName=Techathon'; // Replace with your actual URI

    try {
      final db = await Db.create(connectionString);
      await db.open();
      inspect(db);
      // Access collections

      final classroomCollection = db.collection('Classrooms');
      final studentCollection = db.collection('Students');
      // ... other collections

      // Perform operations (e.g., print Classroom collection)
      final classrooms = await classroomCollection.count();
      final classroom =
          await classroomCollection.findOne(where.eq('classroom', 101));
      print(classroom);
      final student = await studentCollection.count();
      print("Number of students are : $student");
      print(classrooms);

      // Close the connection
      await db.close();
    } catch (e) {
      print('Error connecting to MongoDB: $e');
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




