import 'dart:ui';

import 'package:flutter/material.dart';

class ImageWidgetApp extends StatefulWidget {
  @override
  _ImageWidgetAppState createState() => _ImageWidgetAppState();
}

class _ImageWidgetAppState extends State<ImageWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/mixed-berry.jpg', fit:BoxFit.fitHeight),
              Text('Hello Flutter, 안녕하세요!',
                style: TextStyle(
                  fontFamily: 'CookieRun',
                  fontSize: 20,
                  color: Colors.deepPurple
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
