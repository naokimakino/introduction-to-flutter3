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
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen('Second'),
        '/third': (context) => const SecondScreen('Third'),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(
        child: Text(
          'HomeScreen',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 32), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next, size: 32), label: 'Next'),
        ],
        onTap: (int value) =>
            {if (value == 1) Navigator.pushNamed(context, '/second')},
      ),
    );
  }
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
        onTap: (int value) {
          if (value == 0) Navigator.pop(context);
          if (value == 1) Navigator.pushNamed(context, '/third');
        },
      ),
    );
  }
}
