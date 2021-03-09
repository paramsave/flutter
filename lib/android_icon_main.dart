import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MaterialFlutterApp(),
    );
  }
}

class MaterialFlutterApp extends StatefulWidget {
  @override
  _MaterialFlutterAppState createState() => _MaterialFlutterAppState();
}

class _MaterialFlutterAppState extends State<MaterialFlutterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Design App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.android), Text('android')],
          ),
        ),
      ),
    );
  }
}
