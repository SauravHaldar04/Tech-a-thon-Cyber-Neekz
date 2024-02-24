import 'package:flutter/material.dart';

class StudentSignupPage extends StatelessWidget {
  const StudentSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Login'),
        backgroundColor: const Color.fromARGB(255, 231, 128, 26),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 45.0),
            ElevatedButton(
              onPressed: () {
                // Perform student login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 231, 128, 26),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: const Size(350.0, 45.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Login',style: TextStyle(color: Colors.white),),
              ),
            ),
            const SizedBox(height: 45.0),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    height: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            ElevatedButton.icon(
              onPressed: () {
                // Perform student login with Google logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: const Size(350.0, 45.0),
              ),
              icon: const Icon(Icons.abc_sharp, color: Colors.black),
              label: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Login with Google', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold  )),
              ),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to User Type Selection'),
            ),
          ],
        ),
      ),
    );
  }
}