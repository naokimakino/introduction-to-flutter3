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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.blue,
            height: 120.0,
            child: const Center(
              child: Text(
                'One',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 120.0,
            child: const Center(
              child: Text(
                'Two',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 120.0,
            child: const Center(
              child: Text(
                'Three',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 120.0,
            child: const Center(
              child: Text(
                'Four',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 120.0,
            child: const Center(
              child: Text(
                'Five',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 120.0,
            child: const Center(
              child: Text(
                'Six',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 120.0,
            child: const Center(
              child: Text(
                'Seven',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
