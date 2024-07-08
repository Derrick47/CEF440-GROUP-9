import 'package:flutter/material.dart';
import 'package:lost_and_found/FoundObjectForm.dart';
import 'package:lost_and_found/RestorationPage.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
            child: Container(
              
               width: MediaQuery.of(context).size.width * 0.9,
              
               
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
           
            Text(
              'Your application has been successful!',
              style: TextStyle(fontSize: 20),
            ),
                    SizedBox(height: 40),
             Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to success page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestorationProcess()),
                  );
                },
                    child: Text(
                              'What next ?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
              ),
            ),
            SizedBox(height: 40),
              Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to success page
                  Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => FoundForm()),
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
            ),
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
