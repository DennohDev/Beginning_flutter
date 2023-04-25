import 'package:flutter/material.dart';

class Birthdays extends StatefulWidget {
  const Birthdays({Key? key}) : super(key: key);

  @override
  State<Birthdays> createState() => _BirthdaysState();
}

class _BirthdaysState extends State<Birthdays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.cake,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
