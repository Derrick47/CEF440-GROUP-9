import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/HomePage.dart';
import 'package:lost_and_found/SucessPage.dart';

class FoundForm extends StatefulWidget {
  @override
  _FoundFormState createState() => _FoundFormState();
}

class _FoundFormState extends State<FoundForm> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> getImage(bool isCamera) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: isCamera ? ImageSource.camera : ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Found Object Form'),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 24,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.grey[270],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(8),
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
                            color: Color.fromARGB(255, 26, 146, 245),
                            border: Border.all(
                              color: Color.fromARGB(255, 69, 111, 148),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: _image == null
                                ? Text(
                                    'Insert image here',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                : Image.file(
                                    _image!,
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    getImage(false);
                                  },
                                  child: IconButton(
                                    icon: Icon(Icons.add_a_photo,
                                        size: 48, color: Colors.blue),
                                    onPressed: null,
                                  ),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Select image',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: 8),
                                PopupMenuButton(
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry>[
                                    PopupMenuItem(
                                      child: ListTile(
                                        leading: Icon(Icons.camera_alt,
                                            color: Colors.blue),
                                        title: Text('Take photo',
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )),
                                        onTap: () {
                                          getImage(true);
                                        },
                                      ),
                                    ),
                                    PopupMenuItem(
                                      child: ListTile(
                                        leading: Icon(Icons.photo_library,
                                            color: Colors.blue),
                                        title: Text('Access from gallery',
                                            style: TextStyle(
                                              color: Colors.blue,
                                            )),
                                        onTap: () {
                                          getImage(false);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                          color: Color.fromARGB(255, 26, 146, 245),
                          border: Border.all(
                              color: Color.fromARGB(255, 69, 111, 148)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Description of Found Object',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue, // Adjust the color as needed
                                  width: 1.0, // Adjust the width as needed
                                ),
                                borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                                ),
                                child: DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                    // Adjust padding as needed
                                    hintText: 'Select Document Type', // Add a hint text if needed
                                    border: InputBorder.none,
                                  ),
                                  items: ['Birth Certificate', 'Death Certificate', 'Passport']
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
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15), // Optional: you can adjust the border radius
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Document name',
                                    contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15), // Optional: you can adjust the border radius
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Owners name',
                                    contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15), // Optional: you can adjust the border radius
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Further Description',
                                    contentPadding: EdgeInsets.all(10), // Optional: adjust the padding inside the text field
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
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
                              // Navigate to Homepage
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SuccessPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 5, // Set the elevation for the button
                            ),
                            child: Text(
                              'Submit',
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
                              // Navigate to Homepage
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
