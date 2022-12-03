import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({super.key});

  Screen1State createState() => Screen1State();
}

class Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text('Screen1'),
    ));
  }
}
