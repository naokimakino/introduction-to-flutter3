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
        primarySwatch: Colors.pink,
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
        title: const Text('App Name'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "One",
            style: TextStyle(
                fontSize: 32.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
          Text(
            "Two",
            style: TextStyle(
                fontSize: 32.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
          Text(
            "Three",
            style: TextStyle(
                fontSize: 32.0,
                color: Color(0xFF000000),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
        ],
      ),
    );
  }
}
