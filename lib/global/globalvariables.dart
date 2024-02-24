import 'package:flutter/material.dart';

class GlobalVariables {
  static const Gradient primaryGradient = LinearGradient(
      colors: [Color.fromRGBO(255, 155, 99, 1), Color.fromRGBO(255, 98, 31, 1)],
      stops: [0.1, 1],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  static const fontsize = 33;
  static String mongoUrl =
      'mongodb+srv://user1:abcd@techathon.snbtxqs.mongodb.net/Techathonn?retryWrites=true&w=majority&appName=Techathon';
}
