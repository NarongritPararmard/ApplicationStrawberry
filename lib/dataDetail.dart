import 'package:flutter/material.dart';
import 'package:myapplication/Camera.dart';
import 'package:myapplication/welcome.dart';

class Datadetail extends StatefulWidget {
  const Datadetail({super.key});

  @override
  _DatadetailState createState() => _DatadetailState();
}

class _DatadetailState extends State<Datadetail> {
  String? selectedValue; // ตัวแปรเก็บค่าที่เลือกใน dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            color: const Color.fromARGB(255, 167, 62, 68),
            height: 180, // ความสูงของ Container
            width: 500,
            child: Container(
              height: 90,
              child: Text(
                'พันธุ์มอนเทอเรย์',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Prompt',
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // ระยะห่างระหว่างข้อความและ dropdown
          Container(
            padding: EdgeInsets.only(left: 200),
            height: 55,
            width: 500,
            // color: Colors.amber,
            child: // ตกแต่ง DropdownButtonFormField
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DropdownButtonFormField<String>(
                value: selectedValue,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // พื้นหลังของ dropdown
                  labelText: 'เลือกพันธุ์',
                  labelStyle: TextStyle(
                    fontFamily: 'Prompt', // ฟอนต์ที่ใช้
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // มุมโค้งของกรอบ
                    borderSide: BorderSide(color: Colors.grey), // สีของกรอบ
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), // มุมโค้งของกรอบ
                    borderSide:
                        BorderSide(color: Colors.grey), // สีกรอบเวลาปกติ
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10), // มุมโค้งเมื่อเลือก
                    borderSide: BorderSide(color: Colors.red), // สีกรอบเวลาคลิก
                  ),
                ),
                icon: Icon(Icons.arrow_drop_down,
                    color: Colors.red), // กำหนดไอคอนลูกศร
                dropdownColor: Colors.white, // พื้นหลังของเมนู dropdown
                items: <String>[
                  'พันธุ์มอนเทอเรย์',
                  'พันธุ์อะกิฮิเมะ',
                  'พันธุ์พระราชทาน80',
                  'พันธุ์โคโตะกะ'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontFamily: 'Prompt', // ใช้ฟอนต์เดียวกัน
                        fontSize: 16, // ขนาดฟอนต์ในเมนู
                        color: Colors.black, // สีข้อความในเมนู
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue; // อัพเดทค่าที่เลือก
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Datadetail()),
                    );
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            width: 300,
            // color: Colors.blue,
            child: Container(
              width: 80, // ความกว้างของวงกลม
              height: 80, // ความสูงของวงกลม
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, // รูปภาพเป็นวงกลม
                image: DecorationImage(
                  image: AssetImage(
                      'assets/picture/Monterey.png'), // ใส่ path ของรูปภาพ
                  fit: BoxFit.cover, // ปรับให้เต็ม Container
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 170,
            width: 360,
            // color: Colors.blue,
            child: Text(
              '''      "มอนเทอเรย์" (Monterey) ซึ่งเป็นหนึ่งในพันธุ์\n'''
              '''     สตรอว์เบอร์รีที่ได้รับการพัฒนามาในสหรัฐอเมริกา\n'''
              '''      โดยพันธุ์นี้เป็นที่รู้จักว่าเป็นพันธุ์ที่มีผลผลิตสูงและ\n'''
              '''     มีรสชาติหวานหอม ผลมีขนาดใหญ่และเหมาะสำหรับ\n'''
              '''            การปลูกในสภาพอากาศหลากหลาย\n'''
              '''       พันธุ์ Monterey เป็นพันธุ์ที่พัฒนามาจากพันธุ์\n'''
              '''   Albion และได้รับความนิยมเนื่องจากให้ผลผลิตอย่าง\n'''
              '''ต่อเนื่องตลอดฤดู และยังมีความต้านทานต่อโรค'''
              '''ได้ดีอีกด้วย''',
              style: TextStyle(fontFamily: 'Prompt', fontSize: 14),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.center, // จัดกลางใน Stack
        children: [
          // Container ด้านล่าง
          Container(
            alignment: Alignment.bottomCenter,
            height: 170, // ความสูงของ Container
            // color: Colors.amber,
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
