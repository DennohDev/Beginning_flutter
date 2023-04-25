import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _howAreYou = "…";
  void _openPageAbout({required BuildContext context, bool
  fullscreenDialog = false}) {
    Navigator.push( context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => About(),
      ),
    );
  }
  void _openPageGratitude(
      {required BuildContext context, bool fullscreenDialog = false})
  async {
    final String _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => Gratitude(
          radioGroupValue: -1,
        ), ),
    );
    _howAreYou = _gratitudeResponse ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openPageAbout(
              context: context,
              fullscreenDialog: true,
            ), 
            icon: Icon(Icons.info_outline),)
        ],
      ),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(16.0),
          child: Text('Grateful for: $_howAreYou', style: TextStyle(fontSize: 32.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context),
        tooltip: 'About',
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
  
}
