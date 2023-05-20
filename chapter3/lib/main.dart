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
  static var _message = 'ok.';
  static var _selected = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Name'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _message,
                  style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: PopupMenuButton(
                  onSelected: (String value) => popupSelected(value),
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem(value: "One", child: Text("One")),
                    const PopupMenuItem(value: "Two", child: Text("Two")),
                    const PopupMenuItem(value: "Three", child: Text("Three")),
                  ],
                ),
              ),
            ])));
  }

  void popupSelected(String? value) {
    setState(() {
      _selected = value ?? 'not selected...';
      _message = 'select: $_selected';
    });
  }
}
