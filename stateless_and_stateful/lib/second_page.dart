import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;
  final int intData;
  SecondPage({required this.data, required this.intData});

  @override
  Widget build(BuildContext context) {
    int newInt = intData * 10;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // กำหนดสีของ AppBar เป็นสีแดง
        title: Text('หน้าที่ 2'),
      ),
      body: Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              print('Text clicked');
              // ทำการกระทำอื่นๆ ที่คุณต้องการเมื่อคลิกที่ข้อความ
            },
            child: Text(
              'ค่าที่ส่งมา :' +
                  data +
                  ' และ ' +
                  newInt.toString() +
                  '\nกดเพื่อกลับหน้าหลัก ส่วนนี้คือหน้าที่ 2',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ), //mouse
      ), //center
    );
  }
} //SecondPage