import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapplication/showdata.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _HomePageState();
}

class _HomePageState extends State<CameraPage> {
  File? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text(
          'Strawberry Finder',
          style: TextStyle(
              fontFamily: 'MiTN',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
              letterSpacing: 2
              ),
              
        ),
        backgroundColor: const Color.fromARGB(255, 167, 62, 68),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: _pickedImage == null
                ? const Center(
                    child: Text(
                      'No image selected',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.file(
                        _pickedImage!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
          ),
          
          Container(
            height: 60, // Change this value to adjust the height
            width: 60, // Change this value to adjust the width
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Make the button circular
              color: const Color.fromARGB(
                  255, 167, 62, 68), // Button background color
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // Spread radius of the shadow
                  blurRadius: 5, // Blur radius of the shadow
                  offset: Offset(0, 3), // Position of the shadow (x, y)
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.search,
                  size: 30), // Display search icon, adjust size if needed
              color: Colors.white, // Icon color
              onPressed: () =>
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Showdata()),
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: 'Camera',
                      iconData: Icons.camera_alt,
                      onPressed: () => pickImage(ImageSource.camera),
                      color: const Color.fromARGB(255, 167, 62, 68),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: 'Gallery',
                      iconData: Icons.photo_library,
                      onPressed: () => pickImage(ImageSource.gallery),
                      color: const Color.fromARGB(255, 167, 62, 68),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile == null) return;

    setState(() {
      _pickedImage = File(pickedFile.path);
    });
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData,
          size: 24, color: Colors.white), // เปลี่ยนสีไอคอนเป็นสีขาว
      label: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white, // กำหนดสีของข้อความให้ชัดเจน
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.black,
        elevation: 5,
      ),
    );
  }
}
