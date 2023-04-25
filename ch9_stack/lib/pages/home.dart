import 'package:flutter/material.dart';
import 'package:ch9_stack/widgets/stack.dart';
import 'package:ch9_stack/widgets/stack_favourite.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          if (index.isEven) {
            return const StackWidget();
          } else {
            return const StackFavouriteWidget();
          }
        },
      ),
    );
  }
}
