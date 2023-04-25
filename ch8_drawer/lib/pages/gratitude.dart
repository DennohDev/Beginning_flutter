import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  const Gratitude({Key? key}) : super(key: key);

  @override
  State<Gratitude> createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
      ),
      body: Center(
        child: Icon(
          Icons.sentiment_satisfied,
          size: 120.0,
          color: Colors.lightGreen,
        ),
      ),
    );
  }
}
