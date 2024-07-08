import 'package:flutter/material.dart';
import 'package:lost_and_found/PersonalInfo.dart';

class ThanksForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thank you '),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
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
                borderRadius: BorderRadius.circular(10)
              ),
        
            child:  Text(
              "Information sent successfully.The owner will contact you shortly.\n THANKS FOR YOUR CONTRIBUTON",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold ,
                fontSize: 24.0
              ),    
            ),
            ),
      
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Navigate to success page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalForm()),
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
    );
  }
}
