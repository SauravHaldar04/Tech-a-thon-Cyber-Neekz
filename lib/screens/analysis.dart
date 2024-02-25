import 'dart:async';
import 'package:flutter/material.dart';

class AnalysisPage extends StatefulWidget {
  @override
  _AnalysisPageState createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  List<String> pngFiles = [
    'assets/images/sc4.png',
    'assets/images/sc2.png',
    'assets/images/sc3.png',
    'assets/images/sc1.png',
    'assets/images/sc5.png',
    'assets/images/sc6.png',
    'assets/images/sc7.png',
    'assets/images/sc8.png',
    'assets/images/sc10.png',
    'assets/images/sc11.png',
    'assets/images/sc12.png',
    'assets/images/sc13.png',
    
    // Add more PNG file paths here
  ];

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    loadPngFiles();
  }

  Future<void> loadPngFiles() async {
    for (int i = 0; i < pngFiles.length; i++) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        currentIndex = i;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classroom Analysis'),
        backgroundColor: Colors.transparent, // Set the AppBar background color to transparent
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromRGBO(255, 155, 99, 1), Color.fromRGBO(255, 98, 31, 1)], // Set your desired gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: currentIndex < pngFiles.length
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i <= currentIndex; i++)
                      Image.asset(pngFiles[i]),
                  ],
                ),
              )
            : Text('Up to Date'),
      ),
    );
  }
}
