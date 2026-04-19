import 'package:flutter/material.dart';

class BmrUi extends StatefulWidget {
  const BmrUi({super.key});

  @override
  State<BmrUi> createState() => _BmrUiState();
}

class _BmrUiState extends State<BmrUi> {
  //สร้างตัวควบคุม TextField
  TextEditingController wCtrl = TextEditingController();
  TextEditingController hCtrl = TextEditingController();
  TextEditingController aCtrl = TextEditingController();

  //ตัวแปรเก็บค่า BMR
  String showBmrValue = '0.00';

  //ตัวแปรเก็บค่า เพศที่ผู้ใช้เลือก
  String gender = 'ชาย';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30,
            right: 30,
            bottom: 50,
          ),
          child: Center(
            child: Column(
              children: [
                // ส่วนชื่อหน้าจอ และรูป
                Text(
                  'คำนวณอัตราการเผาพลาญที่',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ร่างกายต้องการ (BMR)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/bmr.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 40),
                // ส่วนการป้อนข้อมูล
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'เพศ',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'ชาย';
                        });
                      },
                      child: Text(
                        'ชาย',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 50),
                        backgroundColor:
                            gender == 'ชาย' ? Colors.blue : Colors.white,
                      ),
                    ),
                    SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gender = 'หญิง';
                        });
                      },
                      child: Text(
                        'หญิง',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 50),
                        backgroundColor:
                            gender == 'หญิง' ? Colors.blue : Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'น้ำหนัก (kg.)',
                  ),
                ),
                TextField(
                  controller: wCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกน้ำหนัก',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ส่วนสูง (cm.)',
                  ),
                ),
                TextField(
                  controller: hCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกส่วนสูง',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'อายุ (ปี)',
                  ),
                ),
                TextField(
                  controller: aCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'กรุณากรอกส่วนสูง',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
                SizedBox(height: 20),
                // ส่วนปุ่ม
                ElevatedButton(
                  onPressed: () {
                    // Validate Ui
                    if (wCtrl.text.isEmpty ||
                        hCtrl.text.isEmpty ||
                        aCtrl.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('กรุณากรอกข้อมูลให้ครบ'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    }

                    // คํานวณ BMR และแสดงผล BMR อย่าลืมพิสูจน์เพศ และแปลงชนิดข้อมูล
                    double w = double.parse(wCtrl.text);
                    double h = double.parse(hCtrl.text);
                    int a = int.parse(aCtrl.text);
                    double bmr = 0;

                    if (gender == 'ชาย') {
                      bmr = 66 + (13.7 * w) + (5 * h) - (6.8 * a);
                    } else {
                      bmr = 655 + (9.6 * w) + (1.8 * h) - (4.7 * a);
                    }

                    setState(() {
                      showBmrValue = bmr.toStringAsFixed(2);
                    });
                  },
                  child: Text(
                    'คำนวณ BMR',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // ให้ทุกอย่างกลับเป็นค่าเริ่มต้น
                    setState(() {
                      gender = 'ชาย';
                      wCtrl.text = '';
                      hCtrl.text = '';
                      aCtrl.text = '';
                      showBmrValue = '0.00';
                    });
                  },
                  child: Text(
                    'ยกเลิก',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      50,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // ส่วนแสดงผลข้อมูลที่ได้จากการคำนวณ
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'BMR',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        showBmrValue,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'kcal/day',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
