import 'package:flutter/material.dart';
//import 'stateless.dart';
import 'stateful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.amberAccent[200],
            onPressed: () {
              print('คุณกดปุ่มเมนู');
            },
          ),
          title: Text(
            'StateLess And StateFul',
            style: TextStyle(
              color: Colors.white, // เปลี่ยนสีข้อความเป็นสีขาว
            ),
          ),
          backgroundColor: Color.fromARGB(255, 103, 7, 2),
        ),
        body: Center(
          //child: MyStatelessWidget(),
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}
