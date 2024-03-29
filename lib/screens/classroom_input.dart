import 'package:flutter/material.dart';
// import 'package:techathon/screens/dashboard_teacher.dart';
import 'package:techathon/screens/dashboard_teacher.dart';
import 'package:techathon/services/classroom_services.dart';

class CreateClassroomPage extends StatefulWidget {
  const CreateClassroomPage({super.key});

  @override
  _CreateClassroomPageState createState() => _CreateClassroomPageState();
}

class _CreateClassroomPageState extends State<CreateClassroomPage> {
  int numberOfBenches = 0;
  int benchCapacity = 0;
  String course = 'Economics';
  String lectureTime = '';
  String selectedValue = "FE";
  String selectedDivision = "C1";
  String selectedType = "Classroom";
  int noOfStudents = 0;
  TimeOfDay? timeOfDay;

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
            const Text('Select a year'),
            Container(
              height: 70,
              width: 80,
              child: DropdownButton<String>(
                elevation: 6,
                value: selectedValue,
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: 'FE',
                    child: Text("FE"),
                  ),
                  DropdownMenuItem(
                    value: "SE",
                    child: Text("SE"),
                  ),
                  DropdownMenuItem(
                    value: "TE",
                    child: Text("TE"),
                  ),
                  DropdownMenuItem(
                    value: "BE",
                    child: Text("BE"),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                    // Perform actions based on the selected value
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Select a Division'),
            Container(
              height: 70,
              width: 80,
              child: DropdownButton<String>(
                elevation: 6,
                value: selectedDivision,
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: "C1",
                    child: Text("C1"),
                  ),
                  DropdownMenuItem(
                    value: "C2",
                    child: Text("C2"),
                  ),
                  DropdownMenuItem(
                    value: "DS1",
                    child: Text("DS1"),
                  ),
                  DropdownMenuItem(
                    value: "Mech1",
                    child: Text("Mech1"),
                  ),
                  DropdownMenuItem(
                    value: "Mech2",
                    child: Text("Mech2"),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    selectedDivision = newValue!;
                    // Perform actions based on the selected value
                  });
                },
              ),
            ),
            Text("Select Classroom Type"),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 70,
              width: 150,
              child: DropdownButton<String>(
                elevation: 6,
                value: selectedType,
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                    value: "Classroom",
                    child: Text("Classroom"),
                  ),
                  DropdownMenuItem(
                    value: "Lab",
                    child: Text("Lab"),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    selectedType = newValue!;
                    // Perform actions based on the selected value
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: () async {
                  timeOfDay = await showMyTimePicker(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Lecture Time",
                  style: TextStyle(color: Colors.orange),
                )),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                noOfStudents = await ClassroomServices.getStudentLength(
                    selectedValue, selectedDivision, course);
                await ClassroomServices.allocateClassroom(
                    noOfStudents, selectedType, timeOfDayToInteger(timeOfDay!));
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(color: Colors.orange),
                backgroundColor: const Color.fromRGBO(255, 98, 31, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: const Size(350.0, 45.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Create Classroom',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  int timeOfDayToInteger(TimeOfDay timeOfDay) {
    if (timeOfDay == null) {
      throw ArgumentError('TimeOfDay cannot be null');
    }
    print("${((timeOfDay.hour * 60 + timeOfDay.minute) / 60)}");
    return timeOfDay.hour * 60 + timeOfDay.minute;
  }

  Future<TimeOfDay?> showMyTimePicker(BuildContext context) async {
    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      // Do something with the selected time
      print('Selected time: ${selectedTime.hour}:${selectedTime.minute}');
    }
    return selectedTime;
  }

  Future<DateTime?> showMyDatePicker(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020, 1, 1),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      // Do something with the selected date
      print('Selected date: $selectedDate');
    }
    return selectedDate;
  }
}
