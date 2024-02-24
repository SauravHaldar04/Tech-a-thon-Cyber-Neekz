import 'package:flutter/material.dart';
import 'package:techathon/global/globalvariables.dart';
import 'package:techathon/screens/teacher_signup_page2.dart';

class TeacherLoginPage extends StatelessWidget {
  const TeacherLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Login',style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient:GlobalVariables.primaryGradient
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Teacher-ID',
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
                backgroundColor: const Color.fromRGBO(255, 98, 31, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                minimumSize: const Size(350.0, 45.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Login',style: TextStyle(color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700),),
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
            ElevatedButton(
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
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        image:   DecorationImage(image: AssetImage('assets/images/Google.png'), fit: BoxFit.cover) ,
                      )
                   
                    ),
                    const SizedBox(width: 49,),
                     const Text(
                      'Login with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 19
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Not Registered yet? ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TeacherSignupPage()));
                    // Perform navigation logic here
                  },
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(
                      
                      color: const Color.fromRGBO(255, 98, 31, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
