import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    // ขออนุญาตการเข้าถึงกล้อง
    var status = await Permission.camera.request();

    // ตรวจสอบว่าการอนุญาตถูกอนุมัติหรือไม่
    if (status.isGranted) {
      // Get a list of available cameras
      final cameras = await availableCameras();

      // Check if there are any available cameras
      if (cameras.isEmpty) {
        print('No cameras available');
        return;
      }

      // Create a CameraController
      _controller = CameraController(cameras[0], ResolutionPreset.high);

      // Initialize the controller
      _initializeControllerFuture = _controller.initialize();
    } else if (status.isDenied || status.isPermanentlyDenied) {
      print('Camera permission not granted. Please enable it in settings.');
      openAppSettings(); // เปิดการตั้งค่าแอปถ้าถูกปฏิเสธสิทธิ์
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Camera'),
            ),
            body: CameraPreview(_controller),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                try {
                  // Ensure that the camera is initialized
                  await _initializeControllerFuture;

                  // Capture a picture
                  final image = await _controller.takePicture();

                  // Do something with the captured image
                  print('Picture saved to: ${image.path}');
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Error capturing image: $e')),
                  );
                }
              },
              child: const Icon(Icons.camera_alt),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(StrawberryFinderApp());
}

class StrawberryFinderApp extends StatelessWidget {
  const StrawberryFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawberry Finder',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CameraPage()),
            );
          },
          child: const Text('Open Camera'),
        ),
      ),
    );
  }
}
