import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomwidget extends StatelessWidget {
  final Color bgcolor;
  final IconData icons;
  VoidCallback? onpress;
  String label;

  MyCustomwidget({
    this.bgcolor = Colors.blue,
    required this.icons,
    this.onpress,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          icons,
          size: 40,
        ),
        onTap: onpress,
      ),
    );
  }
}
