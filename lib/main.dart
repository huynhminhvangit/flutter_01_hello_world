import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bai 5',
      theme: ThemeData(primaryColor: Colors.blue.shade100),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bai 5'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.red,style: BorderStyle.solid),
            shape: BoxShape.circle,
            color: Colors.blue
          ),
          transform: Matrix4.rotationZ(30 * pi / 180),
          width: 200,
          height: 200,
          child: Text('Bai 5',style: TextStyle(color: Colors.white70, fontSize: 20),),
        ),
      ),
    );
  }
}
