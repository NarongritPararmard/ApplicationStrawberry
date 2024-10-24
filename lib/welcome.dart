import 'package:flutter/material.dart';
import 'package:myapplication/Camera.dart';
import 'package:myapplication/dataDetail.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFB53441),
      //   toolbarHeight: 130,
      //   elevation: 0,
      //   title: Row(
      //     mainAxisSize:
      //         MainAxisSize.min, // ปรับให้แถวใช้พื้นที่ตามเนื้อหาเท่านั้น
      //     children: [
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Text(
      //         'ยินดีต้อนรับ !',
      //         style: TextStyle(
      //           fontFamily: 'Prompt', // ใช้ฟอนต์ที่คุณเลือก
      //           fontSize: 44,
      //           color: Colors.white,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Image.asset(
      //         'assets/picture/AppStraw.png', // ใส่ path ของรูปภาพ
      //         width: 150,
      //         height: 160,
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: const Color.fromARGB(255, 167, 62, 68),
            height: 180, // ความสูงของ Container
            width: 500,
            child: Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 10.0), // เพิ่ม padding ด้านข้าง
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Row(
                mainAxisSize:
                    MainAxisSize.min, // ปรับให้แถวใช้พื้นที่ตามเนื้อหาเท่านั้น
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'ยินดีต้อนรับ !',
                    style: TextStyle(
                      fontFamily: 'Prompt', // ใช้ฟอนต์ที่คุณเลือก
                      fontSize: 44,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(width: 10), // ระยะห่างระหว่างข้อความและรูปภาพ
                  Image.asset(
                    'assets/picture/AppStraw.png', // ใส่ path ของรูปภาพ
                    width: 135,
                    height: 160,
                  ),
                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            // color: Colors.amber,
            color: Colors.white,
            height: 50,
            child: Container(
              margin: EdgeInsets.only(
                  left: 30.0, top: 15), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 200, // กำหนดความกว้างของ Container
              height: 30, // กำหนดความสูงของ Container
              // color: Colors.red,
              color: Colors.white,
              child: Text(
                'พันธุ์สรอว์เบอร์รี',
                style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Step section
          Container(
            // color: Colors.blue, // สีพื้นหลังของ Container
            color: Colors.white,
            alignment: Alignment.centerLeft,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // จัดแนวทางซ้าย
              children: [
                // วงกลมที่ 1
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // จัดแนวกึ่งกลาง
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Datadetail()),
                        );
                      },
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/picture/Monterey.png'), // รูปภาพวงกลมที่ 1
                            fit: BoxFit.cover, // ปรับให้เต็มพื้นที่
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5), // ระยะห่างระหว่างวงกลมและข้อความ
                    Text(
                      'มอนเทอเรย์',
                      style: TextStyle(
                          // color: Colors.white,
                          fontFamily: 'Prompt'), // สีข้อความ
                    ),
                  ],
                ),
                SizedBox(width: 15), // ระยะห่างระหว่างวงกลม
                // วงกลมที่ 2
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 19,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Datadetail()),
                        );
                      },
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/picture/พระราชทาน 80.jpg'), // รูปภาพวงกลมที่ 2
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'พระราชทาน\n     80',
                      style: TextStyle(
                          // color: Colors.white,
                          fontFamily: 'Prompt'),
                    ),
                  ],
                ),
                SizedBox(width: 15), // ระยะห่างระหว่างวงกลม
                // วงกลมที่ 3
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Datadetail()),
                        );
                      },
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/picture/Awayuki.jpg'), // รูปภาพวงกลมที่ 3
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'อวายูกิ',
                      style: TextStyle(
                          // color: Colors.white,
                          fontFamily: 'Prompt'),
                    ),
                  ],
                ),
                SizedBox(width: 15), // ระยะห่างระหว่างวงกลม
                // วงกลมที่ 4
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Datadetail()),
                        );
                      },
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/picture/Kotoka.jpg.webp'), // รูปภาพวงกลมที่ 4
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'โคโตะกะ',
                      style: TextStyle(
                          // color: Colors.white,
                          fontFamily: 'Prompt'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Container(
            // color: Colors.amber, // สีพื้นหลังของ Container แรก
            // color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Container(
              // color: Colors.green,
              margin:
                  EdgeInsets.only(left: 25.0), // กำหนดระยะห่างจากขอบซ้าย 20 px
              width: 500, // กำหนดความกว้างของ Container
              height: 27, // กำหนดความสูงของ Container
              child: Text(
                'เริ่มต้นการจำแนกสายพันธุ์',
                style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Navigation Dots
          Container(
            // color: Colors.blue, // สีพื้นหลังของ Container แรก
            // color: Colors.white,
            alignment: Alignment.center,
            height: 200,
            child: Container(
              margin: EdgeInsets.only(
                  left: 0, bottom: 35), // กำหนดระยะห่างจากขอบซ้าย 20 px
              height: 160,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/picture/Image 23-10-2567 BE at 04.39.jpg'), // รูปภาพวงกลมที่ 4
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Welcome()),
                        // );
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
