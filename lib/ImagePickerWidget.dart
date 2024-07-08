import 'package:flutter/material.dart';
//import 'package:lost_and_found/FoundObjectForm.dart';

class ImagePickerWidget extends StatelessWidget {
  final void Function() onCameraPressed;
  final void Function() onGalleryPressed;

  const ImagePickerWidget({
    required this.onCameraPressed,
    required this.onGalleryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.add_a_photo, size: 48, color: Colors.blue),
          onPressed: onCameraPressed,
        ),
        SizedBox(height: 16),
        Text(
          'Select image',
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        SizedBox(height: 8),
        PopupMenuButton(
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.camera_alt, color: Colors.blue),
                title: Text('Take photo', style: TextStyle(color: Colors.blue)),
                onTap: onCameraPressed,
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.photo_library, color: Colors.blue),
                title: Text('Access from gallery', style: TextStyle(color: Colors.blue)),
                onTap: onGalleryPressed,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
