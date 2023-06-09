import 'package:flutter/material.dart';
import 'package:ch7_animations/widgets/animated_container.dart';
import 'package:ch7_animations/widgets/animated_cross_fade.dart';
import 'package:ch7_animations/widgets/animated_opacity.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
          child: Column(
            children: <Widget>[
              AnimatedContainerWidget(),
              Divider(),
              AnimatedCrossFadeWidget(),
              Divider(),
              AnimatedOpacityWidget(),
            ],
          ))
    );
  }
}