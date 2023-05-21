import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  static final _controller = TextEditingController();
  static var _input = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(children: <Widget>[
        const Text(
          'HomeScreen',
          style: TextStyle(fontSize: 32.0),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            style: const TextStyle(fontSize: 28.0),
            onChanged: changeField,
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next, size: 32), label: 'Next'),
        ],
        onTap: (int value) => {
          if (value == 1)
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen(_input)))
        },
      ),
    );
  }

  void changeField(String val) => _input = val;
}

class SecondScreen extends StatelessWidget {
  final String _value;

  const SecondScreen(this._value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next')),
      body: Center(
        child: Text(
          'you typed: "$_value".',
          style: const TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.navigate_before, size: 32), label: 'prev'),
          BottomNavigationBarItem(
              icon: Icon(Icons.android, size: 32), label: '?'),
        ],
        onTap: (int value) => {if (value == 0) Navigator.pop(context)},
      ),
    );
  }
}
