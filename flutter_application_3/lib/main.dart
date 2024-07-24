import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('2 Row 3 Column Layout'),
        ),
        body: Column(
          children: [
            // First row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.red, child: Center(child: Text('1')))),
                  Expanded(
                      child: Container(
                          color: Colors.green,
                          child: Center(child: Text('2')))),
                  Expanded(
                      child: Container(
                          color: Colors.blue, child: Center(child: Text('3')))),
                ],
              ),
            ),
            // Second row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.yellow,
                          child: Center(child: Text('4')))),
                  Expanded(
                      child: Container(
                          color: Colors.orange,
                          child: Center(child: Text('5')))),
                  Expanded(
                      child: Container(
                          color: Colors.purple,
                          child: Center(child: Text('6')))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
