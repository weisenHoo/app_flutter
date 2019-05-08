import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello weisen! 666777888',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.yellow),
      ),
    );
  }
}
