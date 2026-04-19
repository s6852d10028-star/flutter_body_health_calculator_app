import 'package:flutter/material.dart';

class BmiUi extends StatefulWidget {
  const BmiUi({super.key});

  @override
  State<BmiUi> createState() => _BmiUiState();
}

class _BmiUiState extends State<BmiUi> {
  // สร้างตัวควบคุม TextField
  TextEditingController wCtrl = TextEditingController();
  TextEditingController hCtrl = TextEditingController();

  // สร้างตัวแปรเก็บค่า BMI และการแปลผล
  String bmiShowValue = '0.00';
  String bmiShowResult = 'การแปลผล';

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
                  'คำนวณหาค่าดัชนีมวลกาย (BMI)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/bmi.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 40),
                // ส่วนการป้อนข้อมูล
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
                SizedBox(height: 20),
                // ส่วนปุ่ม
                ElevatedButton(
                  onPressed: () {
                    // Validate UI (ตรวจสอบ)
                    if (wCtrl.text.isEmpty || hCtrl.text.isEmpty) {
                      //แสดงข้อความแจ้งผู้ใช้
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('กรุณากรอกข้อมูลให้ครบ'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return; // return เพื่อไม่ให้ทำอย่างอื่น
                    }

                    //คำนวณและแสดงผล BMI
                    double w = double.parse(wCtrl.text);
                    double h = double.parse(hCtrl.text);

                    double bmi = w /
                        ((h / 100) *
                            (h / 100)); //น้ำหนัก หารด้วยส่วนสูงยกกำลังสอง

                    setState(() {
                      bmiShowValue = bmi.toStringAsFixed(2);
                    });

                    //แปลผลและแสดงผลการแปรผล
                    setState(() {
                      if (bmi < 18.5) {
                        bmiShowResult = 'ผอมเกินไป';
                      } else if (bmi <= 22.9) {
                        bmiShowResult = 'สมส่วน';
                      } else if (bmi <= 24.9) {
                        bmiShowResult = 'ท้วม';
                      } else if (bmi <= 29.9) {
                        bmiShowResult = 'โรคอ้วนระดับ 1';
                      } else {
                        bmiShowResult = 'โรคอ้วนระดับ 2';
                      }
                    });
                  },
                  child: Text(
                    'คำนวณ BMI',
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
                    // ให้ทุกอย่างกลับไปเป็นค่าเริ่มต้น
                    setState(() {
                      wCtrl.text = ''; //หรือ wCtrl.clear();
                      hCtrl.text = ''; //หรือ hCtrl.clear();
                      bmiShowValue = '0.00';
                      bmiShowResult = 'การแปลผล';
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
                        'BMI',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bmiShowValue,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        bmiShowResult,
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
