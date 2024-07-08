import 'package:flutter/material.dart';
import 'package:lost_and_found/LostObjectForm.dart';

class ThankLost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThankLost '),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
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
                  border: Border.all(color: Colors.grey), // Add border decoration
                  borderRadius: BorderRadius.circular(10),
                   // Optional: Add border radius
                ),
                child: Text(
                  "Thank you for submitting your report. Your lost document has been registered in our system.\nPlease keep an eye on your email and our platform for any updates regarding your lost documents.\nIf you have any further questions or concerns, feel free to contact our support team.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Navigate to lost form
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LostForm()),
                  );
                },
                  child: Text(
                              'Back',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
