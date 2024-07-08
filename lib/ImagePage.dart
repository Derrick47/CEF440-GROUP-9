import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  dynamic _image; // Use dynamic to handle both File and Uint8List
  ImagePicker _picker = ImagePicker();

  Future<void> getImage(bool isCamera) async {
    dynamic image;
    if (isCamera) {
      final pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    } else {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    }

    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image pick Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.insert_drive_file),
              onPressed: () {
                getImage(false); // Implement functionality for file insertion
              },
            ),
            SizedBox(height: 20),
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                getImage(true); // Implement functionality for camera usage
              },
            ),
            _image == null
                ? Container()
                : _image is File
                    ? Image.file(
                        _image,
                        height: 200, // Adjust height and width as needed
                        width: 200,
                        fit: BoxFit.cover,
                      )
                    : _image is String && (_image.startsWith('http') || _image.startsWith('https'))
                        ? Image.network(
                            _image,
                            height: 200, // Adjust height and width as needed
                            width: 200,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(
                            _image,
                            height: 200, // Adjust height and width as needed
                            width: 200,
                            fit: BoxFit.cover,
                          ),
          ],
        ),
      ),
    );
  }
}
