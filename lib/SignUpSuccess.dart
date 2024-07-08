import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lost_and_found/LoginPage.dart';
import 'package:lost_and_found/HomePage.dart';

class SignInSuccess extends StatefulWidget {
  @override
  _SignInSuccessState createState() => _SignInSuccessState();
}

class _SignInSuccessState extends State<SignInSuccess> {
  late Timer _timer; // Timer instance to control navigation delay

  @override
  void initState() {
    super.initState();
    // Start a timer that redirects after 5 seconds
    _timer = Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 100,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Your account have been sucessfully registered!',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 40),
                   
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
