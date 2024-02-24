import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techathon/global/globalvariables.dart';

class TeacherSignupPage extends StatefulWidget {
  const TeacherSignupPage({super.key});

  @override
  State<TeacherSignupPage> createState() => _TeacherSignupPageState();
}

class _TeacherSignupPageState extends State<TeacherSignupPage> {
  String selectedValue = "Economics";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Teacher SignUp ',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration:
              const BoxDecoration(gradient: GlobalVariables.primaryGradient),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 120.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Teacher ID',
                  floatingLabelStyle: TextStyle(color: Colors.orange),
                  focusColor: Colors.orange,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  labelText: 'Name',
                  floatingLabelStyle: TextStyle(color: Colors.orange),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  labelText: 'Designation',
                  floatingLabelStyle: TextStyle(color: Colors.orange),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Select Course"),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 70,
                child: DropdownButton<String>(
                  elevation: 6,
                  value: selectedValue,
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem(
                      value: "Economics",
                      child: Text("Economics"),
                    ),
                    DropdownMenuItem(
                      value: "History",
                      child: Text("History"),
                    ),
                    DropdownMenuItem(
                      value: "Computer Science",
                      child: Text("Computer Science"),
                    ),
                    DropdownMenuItem(
                      value: "Political Science",
                      child: Text("Political Science"),
                    ),
                    DropdownMenuItem(
                      value: "Literature",
                      child: Text("Literature"),
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
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  labelText: 'Password',
                  floatingLabelStyle: TextStyle(color: Colors.orange),
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  labelText: 'Confirm Password',
                  floatingLabelStyle: TextStyle(color: Colors.orange),
                ),
              ),
              const SizedBox(height: 45.0),
              ElevatedButton(
                onPressed: () {
                  // Perform student login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 98, 31, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(350.0, 45.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have an account? ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const TeacherSignupPage()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 231, 128, 26),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
