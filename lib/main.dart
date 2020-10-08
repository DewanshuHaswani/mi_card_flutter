import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// for hot reload to work we need to create StatelessWidget shortcut to that is stless

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Container(),
      ),
    );
  }
}
