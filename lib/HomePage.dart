import 'package:flutter/material.dart';
import 'package:lost_and_found/FoundObjectForm.dart';
import 'package:lost_and_found/LostObjectForm.dart';
import 'package:lost_and_found/Profile.dart';
import 'package:lost_and_found/HomeText.dart';
import 'package:lost_and_found/ViewList.dart';

class Homepage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    intro(),
    FoundForm(),
    LostForm(),
    ItemScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add functionality for settings icon
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to the Profile screen when person icon is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add functionality for notification icon
            },
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Color.fromARGB(255, 16, 17, 16), // WhatsApp selected item color
        unselectedItemColor: Colors.grey, // WhatsApp unselected item color
        selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 17, 1, 1)), // WhatsApp selected label color
        unselectedLabelStyle: TextStyle(color: Colors.grey), // WhatsApp unselected label color
        type: BottomNavigationBarType.fixed, // Ensure all labels are visible
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'FOUND',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'LOST',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye), // Placeholder for notifications
            label: 'VIEW',
          ),
        ],
      ),
    );
  }
}
