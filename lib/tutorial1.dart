import 'package:flutter/material.dart';
import 'package:myapplication/tutorial2.dart';
import 'package:myapplication/welcome.dart';

class Tutorial1 extends StatelessWidget {
  const Tutorial1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topLeft, // จัดตำแหน่งให้ตรงมุมซ้าย
              children: [
                Container(
                  width: 400,
                  height: 450,
                  child: Image.asset(
                    'assets/picture/Screenshot 2567-10-22 at 22.16.37.png', // เพิ่มพาธรูปภาพที่นี่
                    // fit: BoxFit.cover,
                  ),
                ),
                // ข้อความ "ข้าม ->" ที่สามารถกดได้
                GestureDetector(
                  onTap: () {
                    // ทำการกระทำเมื่อข้อความถูกกด เช่น นำทางไปหน้าถัดไป
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Welcome()), // เปลี่ยนไปยังหน้า Tutorial1
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(16.0), // ระยะห่างจากขอบ
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5), // ขนาดของ padding
                    // color: Colors.black54, // สีพื้นหลังของข้อความ
                    child: Transform(
                      transform: Matrix4.identity()
                        ..scale(1.0, 1.1), // ปรับขนาดในแนวนอน (x) เป็น 1.5 เท่า
                      child: const Text(
                        'ข้าม →', // ข้อความที่ต้องการแสดง
                        style: TextStyle(
                          color: Color.fromARGB(255, 35, 41, 45), // สีข้อความ
                          fontSize: 17, // ขนาดฟอนต์
                          fontFamily: 'Prompt', // ฟอนต์ที่ต้องการใช้
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Step section
          Container(
            // color: Colors.amber, // สีพื้นหลังของ Container แรก
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Container(
              margin:
                  EdgeInsets.only(left: 30.0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 70, // กำหนดความกว้างของ Container
              height: 30, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 239, 87, 89), // สีพื้นหลังของ Container
                borderRadius: BorderRadius.circular(6.0), // กำหนดมุมโค้งมน
              ),
              child: Center(
                // จัดตำแหน่งให้เนื้อหากลาง
                child: Text(
                  'Step 01',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Agrandir",
                    fontWeight: FontWeight.bold,
                  ), // สีข้อความ
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            // color: Colors.amber, // สีพื้นหลังของ Container แรก
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Container(
              margin:
                  EdgeInsets.only(left: 25.0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 200, // กำหนดความกว้างของ Container
              height: 100, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                // color: const Color.fromARGB(
                //     255, 239, 87, 89), // สีพื้นหลังของ Container
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0), // กำหนดมุมโค้งมน
              ),
              child: Center(
                // จัดตำแหน่งให้เนื้อหากลาง
                child: Text(
                  '''อัปโหลดภาพถ่าย
สตรอว์เบอร์รี''',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 41, 45),
                    fontSize: 26,
                    fontFamily: "Prompt",
                    fontWeight: FontWeight.bold,
                  ), // สีข้อความ
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            // color: Colors.amber, // สีพื้นหลังของ Container แรก
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Container(
              margin:
                  EdgeInsets.only(left: 35.0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 300, // กำหนดความกว้างของ Container
              height: 70, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                // color: const Color.fromARGB(
                //     255, 239, 87, 89), // สีพื้นหลังของ Container
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0), // กำหนดมุมโค้งมน
              ),
              child: Center(
                // จัดตำแหน่งให้เนื้อหากลาง
                child: Text(
                  '''ถ่ายภาพหรืออัปโหลดภาพสตรอว์เบอร์รีของคุณเพื่อเริ่มการจำแนกสายพันธุ์''',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 41, 45),
                    fontSize: 18,
                    fontFamily: "Prompt",
                  ), // สีข้อความ
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          // Navigation Dots
          Container(
            // color: Colors.amber, // สีพื้นหลังของ Container แรก
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Container(
              margin:
                  EdgeInsets.only(left: 15.0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 500, // กำหนดความกว้างของ Container
              height: 70, // กำหนดความสูงของ Container
              decoration: BoxDecoration(
                // color: const Color.fromARGB(
                //     255, 239, 87, 89), // สีพื้นหลังของ Container
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0), // กำหนดมุมโค้งมน
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 10, color: Color(0xFFB53441)),
                  SizedBox(width: 5),
                  Icon(Icons.circle, size: 10, color: Colors.grey),
                  SizedBox(width: 5),
                  Icon(Icons.circle, size: 10, color: Colors.grey),
                  SizedBox(width: 220),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tutorial2()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFB53441),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    ),
                    child: const Text(
                      'ต่อไป',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Prompt',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), // Continue Button
        ],
      ),
    );
  }
}
