import 'package:flutter/material.dart';
import 'package:myapplication/Camera.dart';
import 'package:myapplication/dataDetail.dart';
import 'package:myapplication/welcome.dart';

class Showdata extends StatelessWidget {
  const Showdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center items vertically
            children: [
              Container(
                height: 180,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 35),
                color:
                    const Color.fromARGB(255, 167, 62, 68), // Container color
                child: Text(
                  'พันธุ์ของคุณคือ....',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white, // Text color
                    fontFamily: 'MiTN',
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 25,
          ),
Container(
  alignment: Alignment.center,
  height: 60,
  width: 250,
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 216, 84, 88), // สีชมพูอ่อน
    border: Border.all(
      color: Colors.white, // Border color
      width: 2.0, // Border width
    ),
    borderRadius: BorderRadius.circular(40), // Optional: Rounded corners for the border
  ),
  child: Text(
    'พันธุ์อวายูกิ',
    style: TextStyle(
      fontFamily: 'MiTN',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white, // Text color
    ),
  ),
),


          Container(
            margin: EdgeInsets.only(top: 25),
            color: Colors.blue, // สีพื้นหลังของ Container แรก
            // color: Colors.white,
            alignment: Alignment.center,
            height: 460,
            width: 350,
            child: Container(
              margin: EdgeInsets.only(
                  left: 0, bottom: 0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              height: 460,
              width: 430,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/picture/IMG_2858.jpg'), // รูปภาพวงกลมที่ 4
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ), // Continue Button
          // Navigation Dots
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center, // จัดกลางใน Stack
        children: [
          // Container ด้านล่าง
          Container(
            alignment: Alignment.bottomCenter,
            height: 170, // ความสูงของ Container
            // color: Colors.red, // สีพื้นหลังของ Container
            child: Container(
              padding: EdgeInsets.only(bottom: 15),
              height: 130,
              width: 500,
              color: const Color.fromARGB(255, 167, 62, 68),
              child: Center(
                // จัดกลางข้อความใน Container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // จัดให้กลาง
                  children: [
                    // รูปภาพด้านซ้าย
                    GestureDetector(
                      onTap: () {
                        // ทำการกระทำเมื่อคลิกที่รูปภาพด้านซ้าย
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Welcome()),
                        );
                      },
                      child: Image.asset(
                        'assets/picture/Screenshot 2567-10-23 at 05.40.39.png 16-17-59-405.png', // เปลี่ยนเป็น path ของรูปภาพด้านซ้าย
                        width: 70,
                        height: 70,
                      ),
                    ),
                    SizedBox(width: 85), // ระยะห่างระหว่างรูปภาพและข้อความ
                    // ข้อความ
                    Text(
                      'upload',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 85), // ระยะห่างระหว่างข้อความและรูปภาพ
                    // รูปภาพด้านขวา
                    GestureDetector(
                      onTap: () {
                        // ทำการกระทำเมื่อคลิกที่รูปภาพด้านขวา
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Datadetail()),
                        );
                      },
                      child: Image.asset(
                        'assets/picture/Screenshot 2567-10-23 at 05.41.58.png', // เปลี่ยนเป็น path ของรูปภาพด้านขวา
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // วงกลมที่ทับอยู่กลาง

          Positioned(
            bottom: 90, // ระยะห่างจากด้านบนของ Stack (ปรับให้ตรงกลาง)
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraPage()),
                );
              },
              child: Container(
                width: 80, // ความกว้างของวงกลม
                height: 80, // ความสูงของวงกลม
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // รูปภาพเป็นวงกลม
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/picture/Screenshot 2567-10-23 at 05.31.10.png'), // ใส่ path ของรูปภาพ
                    fit: BoxFit.cover, // ปรับให้เต็ม Container
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // สีเงา
                      spreadRadius: 2, // ขยายเงาออกไป
                      blurRadius: 5, // ความเบลอของเงา
                      offset: Offset(0, 3), // ตำแหน่งเงา
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
