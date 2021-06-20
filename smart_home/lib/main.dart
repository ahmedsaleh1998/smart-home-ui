import 'package:flutter/material.dart';
import 'package:smart_home/widgets/gridview_child.dart';
import 'package:smart_home/widgets/homepage.dart';
import 'package:smart_home/widgets/width_and_height.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Container(child: gridview()));
  }
}
