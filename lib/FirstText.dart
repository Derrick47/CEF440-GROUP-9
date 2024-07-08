import 'package:flutter/material.dart';

class intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  'Documents Found',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
             Center(
              child: Container(
              height: 200, 
              width: MediaQuery.of(context).size.width * 0.7,// Adjust the height according to your image size
              child: Placeholder(), // Replace Placeholder with your image widget
                     ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'HOW DOES IT WORK?',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), // Add border decoration
                  borderRadius: BorderRadius.circular(8), // Optional: Add border radius
                ),
                padding: EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                    children: [
                      TextSpan(
                        text: 'A. IF YOU HAVE FOUND A DOCUMENT\n ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '1.  Click on FOUND\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            'In case you have found an object, click on the “FOUND” icon below\n',
                      ),
                      TextSpan(
                        text: '2.  Upload the image and description',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\nTake the picture of the found object and fill the description form (enter the information of the object found).\n',
                      ),
                      TextSpan(
                        text: '3.  Upload your personal information',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\nEnter your personal information so that the owner of the object can contact you to get his/her property.\n\n\n',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), // Add border decoration
                  borderRadius: BorderRadius.circular(8), // Optional: Add border radius
                ),
                padding: EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.0,
                    ),
                    children: [
                      TextSpan(
                        text: 'B. IF YOU LOST A DOCUMENT\n ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '1.  Click on LOST\n',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            'In case you have lost a document, click on the “LOST” icon below\n',
                      ),
                      TextSpan(
                        text: '2.  Upload the image and description',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\nTake the picture of the missed object and fill the description form (enter the information of the object found).\n',
                      ),
                      TextSpan(
                        text: '3.  Upload your personal information',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text:
                            '\nThe image will be sent to the image matching algorithm for comparison. Once the item has been found, a message will be sent to your email so that you can connect with the person in possession of  your property\n',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
