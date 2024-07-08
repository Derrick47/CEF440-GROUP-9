import 'package:flutter/material.dart';
import 'package:lost_and_found/PersonalInfo.dart';
import 'package:lost_and_found/OfficeInfo.dart';
import 'package:lost_and_found/SucessPage.dart';

void main() {
  runApp(RestorationProcess());
}

class RestorationProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restoration Process',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restoration Process'),
        ),
        backgroundColor: Colors.white,
        body: RestorationOptions(),
      ),
    );
  }
}

class RestorationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
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
          
          child: Column(
            children: [
              ElevatedButton(
            onPressed: () {
              // Navigate to the office information screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OfficeInformationScreen()),
              );
            },
                child: Text(
                              'Deposit at our office',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
          ),
          SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {
              // Chat with the person
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalForm()),
              );
            },
              child: Text(
                              'Chat with the person',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
          ),
           SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {
              // Chat with the person
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessPage()),
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
        ],
      ),
    );
      
  
  }
}
