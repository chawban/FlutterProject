import 'package:flutter/material.dart';
import 'second_page.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;
  bool _isButtonEnabled = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= 20) {
        _isButtonEnabled = false;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void isButtonEnabledReset() {
    // _isButtonEnabled = true;
    setState(() {
      _counter = 0;
      _isButtonEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'กดปุ่มด้านล่าง:',
        ),
        Text('$_counter'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isButtonEnabled ? _incrementCounter : null,
              //onPressed: _isButtonEnabled ? () => print(_incrementCounter) : null,
              //onPressed: _incrementCounter,
              child: Text('เพิ่ม'),
            ),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: Text('ลบ'),
            ),
            ElevatedButton(
              onPressed: isButtonEnabledReset,
              child: Text('รีเซ็ต'),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.account_circle),
          tooltip: 'Go to the next page',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage(data: "20", intData: 555)),
            );
          },
        ),
        Text("หมายเลขที่สามารถแสดงได้คือ 1 ถึง 20 เท่านั้น"),
      ],
    );
  }
}
