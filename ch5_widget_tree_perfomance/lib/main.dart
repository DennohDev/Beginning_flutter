import 'package:flutter/material.dart';
import 'package:ch5_widget_tree_perfomance/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baseline App',
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
