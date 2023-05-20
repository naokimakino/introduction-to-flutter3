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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok';
  static var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Text(_message, style: const TextStyle(fontSize: 28.0)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        backgroundColor: Colors.lightBlueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Android',
              icon: Icon(Icons.android, color: Colors.black, size: 50)),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.android, color: Colors.red, size: 50)),
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.android, color: Colors.white, size: 50))
        ],
        onTap: tapBottomIcon,
      ),
    );
  }

  void tapBottomIcon(int value) {
    var items = ['Android', 'Favorite', 'Home'];
    setState(() {
      _index = value;
      _message = 'you tapped: "${items[_index]}".';
    });
  }
}
