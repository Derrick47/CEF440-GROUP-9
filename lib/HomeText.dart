import 'package:flutter/material.dart';

class intro extends StatelessWidget {
  // Example list of image URLs (replace with your actual data)
  final List<String> imageUrls = [
    
    
    'assets/images/ScreenshotID1.jpg',
    'assets/images/ScreenshotID2.jpg',
    'assets/images/ScreenshotID3.jpg',
    'assets/images/ScreenshotID5.jpg',
    // Add more image URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Documents Found',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: imageUrls.map((url) {
                    return Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(url),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
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
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
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
                              'In case you have found an object, click on the “FOUND” icon below\n\n',
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
                              '            \nTake the picture of the found object and fill the description form (enter the information of the object found).\n\n',
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
                              '            \nEnter your personal information so that the owner of the object can contact you to get his/her property.\n',
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
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
                              'In case you have lost a document, click on the “LOST” icon below\n\n',
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
                              '\nTake the picture of the missed object and fill the description form (enter the information of the object lost).\n\n',
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
      ),
    );
  }
}
