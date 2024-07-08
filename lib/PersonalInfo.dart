import 'package:flutter/material.dart';
import 'package:lost_and_found/RestorationPage.dart';
import 'package:lost_and_found/Thanks.dart';

class PersonalForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 45, 78),
                        border: Border.all(color: Color.fromARGB(255, 69, 111, 148)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'ENTER YOUR PERSONAL INFORMATION HERE',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Adjust the color as needed
                                  width: 1.0, // Adjust the width as needed
                                ),
                                borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                              ),
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10.0), // Adjust padding as needed
                                  hintText: 'Town', // Add a hint text if needed
                                  border: InputBorder.none,
                                ),
                                items: ['Limbe', 'Douala', 'Mile 4']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // Handle dropdown value change here
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10), // Optional: you can adjust the border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10), // Optional: you can adjust the border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Phone number',
                                  contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10), // Optional: you can adjust the border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Whatapp number',
                                  contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10), // Optional: you can adjust the border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),

            // Buttons wrapped in a Row for horizontal alignment
                         Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
     width: MediaQuery.of(context).size.width * 0.17,
     padding: const EdgeInsets.all(8.0),
    margin: EdgeInsets.symmetric(vertical: 10),
    
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
           boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.7,
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      ),
                    ],
  ),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        // Navigate to success page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThanksForm()),
        );
      },
      style: ElevatedButton.styleFrom(
        elevation: 5, // Set the elevation for the button
      ),
           child: Text(
                              'Send',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
    ),
  ),
),


              SizedBox(width: 60),
              Center(
             child: Container(
               width: MediaQuery.of(context).size.width * 0.15,
     padding: const EdgeInsets.all(8.0),
         margin: EdgeInsets.symmetric(vertical: 10),
     decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.7,
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      ),
    ],
  ),
  child: Center(
    child: ElevatedButton(
      onPressed: () {
        // Navigate to success page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RestorationProcess()),
        );
      },
      style: ElevatedButton.styleFrom(
        elevation: 5, // Set the elevation for the button
      ),
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
),
              ),
                  ]
                 )
              )
            
          ],
        ),
      ),
    );
  }
}
