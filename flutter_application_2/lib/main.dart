import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2 Rows 10 Columns',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('2 Rows 10 Columns Layout'),
        ),
        body: Column(
          children: [
            buildRow(1),
            buildRow(2),
          ],
        ),
      ),
    );
  }

  Widget buildRow(int rowNumber) {
    return Expanded(
      child: Row(
        children: List.generate(10, (index) {
          return Expanded(
            child: Container(
              margin: EdgeInsets.all(2.0),
              color: Colors.red,
              child: Center(
                child: Text('R$rowNumber C${index + 1}',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          );
        }),
      ),
    );
  }
}
