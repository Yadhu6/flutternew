


import 'dart:async';

import 'package:flutter/material.dart';

import '../Todo/Todo.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      useInheritedMediaQuery: true,
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
    ),
  );
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context as BuildContext).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Note()
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('SMART APP'),
    //backgroundColor: Colors.amber,
    ),);
  }}