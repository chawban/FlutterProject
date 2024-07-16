import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample2(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // กำหนดสีของ AppBar เป็นสีแดง
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Add your onPressed code here!
            print('Menu icon pressed');
          },
        ),
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0), // Adjust the padding as needed
              child: Row(
                children: [
                  Text('Text 1'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Text 2'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Text 3'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Text 4'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Text 5'),
                ],
              ),
            ),
          ),
        ],
      ), //Column
    );
  }
} // AppBarExample

class AppBarExample2 extends StatelessWidget {
  const AppBarExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400], // กำหนดสีของ AppBar เป็นสีpink
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Add your onPressed code here!
            print('Menu icon pressed');
          },
        ),
        title: const Text('AppBar Demo2'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Text('Text 1'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text('Text 2'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text('Text 3'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text('Text 4'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Text('Text 5'),
              ],
            ),
          ),
        ],
      ), //Column
    );
  }
} // AppBarExample2

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green, // กำหนดสีของ AppBar เป็นสีแดง
        title: Text('Second Page'),
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
              'กดเพื่อกลับหน้าหลัก ส่วนนี้คือหน้าที่ 2',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ), //mouse

        /*
        child: GestureDetector(
          onTap: () {
            //onPressed: () {
            Navigator.pop(context);
            // ทำการกระทำอื่นๆ ที่คุณต้องการเมื่อคลิกที่ข้อความ
          },
          child: Text(
            'กดเพื่อกลับหน้าหลัก ส่วนนี้คือหน้าที่ 2',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ), // GestureDetector
        
        */
      ), //center
    );
  }
} //SecondPage

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900], // กำหนดสีของ AppBar เป็นสีเขียว
        title: Text('หน้าที่ 3.'),
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
              'กดเพื่อกลับหน้าหลัก ส่วนนี้คือหน้าที่ 3',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
          ),
        ), //mouse

        /*
        child: GestureDetector(
          onTap: () {
            //onPressed: () {
            Navigator.pop(context);
            // ทำการกระทำอื่นๆ ที่คุณต้องการเมื่อคลิกที่ข้อความ
          },
          child: Text(
            'กดเพื่อกลับหน้าหลัก ส่วนนี้คือหน้าที่ 2',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ), // GestureDetector
        
        */
      ), //center
    );
  }
} // ThirdPage
