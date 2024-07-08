import 'package:flutter/material.dart';
import 'package:lost_and_found/LoginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(), // Directly use FirstRoute as the home widget
    );
  }
}
