import 'package:flutter/material.dart';
import 'package:myapplication/tutorial1.dart';

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
        fontFamily: 'More Sugar',
      ),
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => CameraPage()),
//             );
//           },
//           child: const Text('Open Camera'),
//         ),
//       ),
//     );
//   }
// }


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ยินดีต้อนรับเข้าสู่',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black87,
                fontFamily: 'Prompt',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Strawberry Finder',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFFEF5759), // Color #EF5759
                // fontFamily: 'More Sugar',
              ),
            ),
            Image.asset(
              'assets/picture/AppStraw.png', // Add your logo here
              height: 420,
            ),
            const Text(
              'ค้นหาสายพันธุ์สตรอว์เบอร์รีของคุณได้ง่าย ๆ\n'
              'ด้วยปลายนิ้ว แค่ถ่ายภาพ ผลลัพธ์แม่นยำ\n'
              'รวดเร็ว พร้อมให้คุณตัดสินใจเลือกซื้อ\n'
              'ได้อย่างมั่นใจ!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontFamily: 'Prompt',
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print("Button Pressed");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tutorial1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB53441), // Button color #B53441
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
                shadowColor: Colors.grey.withOpacity(0.5),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                'เริ่มต้น',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'MiTN',
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
