import 'dart:io';
import 'dart:ui'; // Import dart:ui to use Image widget

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/HomePage.dart';
import 'package:lost_and_found/PersonalInfo.dart';
import 'package:lost_and_found/LostObjectForm.dart';

class LostAndFoundItem {
  final String itemName;
  final String ownerName;
  final String status; // "Lost" or "Found"
  final String imageUrl;

  LostAndFoundItem({
    required this.itemName,
    required this.ownerName,
    required this.status,
    required this.imageUrl,
  });
}

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  final List<LostAndFoundItem> items = [
    LostAndFoundItem(
      itemName: "Death Certificate",
      ownerName: "Tripple red",
      status: "Lost",
      imageUrl: 'assets/images/ScreenshotID1.jpg', // Asset image path
    ),
    LostAndFoundItem(
      itemName: "Birth certficate",
      ownerName: "Tanyi jane",
      status: "found",
      imageUrl: 'assets/images/ScreenshotID2.jpg', // Asset image path
    ),
    LostAndFoundItem(
      itemName: "Birth Certificate",
      ownerName: "John Cham",
      status: "Lost",
      imageUrl: 'assets/images/default_image.jpg', // Default image asset path
    ),
    LostAndFoundItem(
      itemName: "NationalID",
      ownerName: "clement fossoh",
      status: "Lost",
      imageUrl: 'assets/ScreenshotID1.jpg',
    ),
    LostAndFoundItem(
      itemName: "Death certificate",
      ownerName: "Michael Junior",
      status: "Lost",
      imageUrl: 'assets/ScreenshotID2.jpg', // Asset image path
    ),
    LostAndFoundItem(
      itemName: "NationalID",
      ownerName: "John Doe",
      status: "Lost",
      imageUrl: 'assets/images/default_image.jpg', // Default image asset path
    ),
    LostAndFoundItem(
      itemName: "NationalID",
      ownerName: "Tyrone Smith",
      status: "Found",
      imageUrl: "https://via.placeholder.com/150",
    ),
    LostAndFoundItem(
      itemName: "Birth Cretificate",
      ownerName: "Jamal Johnson",
      status: "Lost",
      imageUrl: "https://via.placeholder.com/150",
    ),
  ];

  File? _imageFile; // Variable to store the selected image file
  TextEditingController _searchController = TextEditingController();
  List<LostAndFoundItem> filteredItems = []; // List to store filtered items
  bool showError = false;

  @override
  void initState() {
    filteredItems = items; // Initialize filteredItems with all items
    super.initState();
  }

  void _filterItems(String query) {
    List<LostAndFoundItem> searchResult = items
        .where((item) =>
            item.itemName.toLowerCase().contains(query.toLowerCase()))
        .toList();
    setState(() {
      filteredItems = searchResult;
      showError = searchResult.isEmpty; // Show error if searchResult is empty
    });
  }

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the screen
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    showError = false; // Reset error flag on input change
                  });
                  _filterItems(value);
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search by item name..( NationalID, Birth or Death Certificate )',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: showError
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'No items found matching your search.',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // Black border around each item
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white, // White background for the container
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Container for image (profile icon placeholder)
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white, // Placeholder color for profile icon
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  filteredItems[index].imageUrl,
                                  width: 150,
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    filteredItems[index].itemName,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Owner: ${filteredItems[index].ownerName}"),
                                  SizedBox(height: 5),
                                  Text("Status: ${filteredItems[index].status}"),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (filteredItems[index].status == "Lost") {
                                            // Navigate to PersonalInfo page for Lost item
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => PersonalForm()),
                                            );
                                          } else {
                                            // Navigate to LostObjectForm page for Found item
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => LostForm()),
                                            );
                                          }
                                        },
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                              side: BorderSide(color: Colors.black), // Black border for button
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          filteredItems[index].status == "Lost" ? "Report" : "Claim",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          SizedBox(height: 16), // Space between the list and the "Back" button
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Container(
              alignment: Alignment.center, // Align button to the center horizontally
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to success page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
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
          SizedBox(height: 16), // Additional space for better separation
        ],
      ),
    );
  }
}
