import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});
  
  @override
  State<CameraPage> createState() => _HomePageState();
}

class _HomePageState extends State<CameraPage> {
  File? _pickedImage;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text(
          'Image Picker Example',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        )
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: _pickedImage == null
              ? const Center(
                  child: Text(
                    'No image selected',
                    style: TextStyle(fontSize: 20),
                  ),
              )
              : Image.file(_pickedImage!),
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
                      onPressed: () => pickImage(ImageSource.camera),  // ใช้ ImageSource
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: 'Gallery',
                      iconData: Icons.photo_library,
                      onPressed: () => pickImage(ImageSource.gallery),  // ใช้ ImageSource
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

  const CustomButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData),
      label: Text(title),
    );
  }
}
