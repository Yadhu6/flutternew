import 'dart:async';
//import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Sharedpreff/Registration%20page.dart';

import 'Expansion project.dart';
import 'fittedboxex.dart';
import 'googlemaps.dart';


void main() {
  runApp(DevicePreview (enabled: !kReleaseMode,
      builder: (context) =>MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
  ),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context as BuildContext).pushReplacement(
        MaterialPageRoute(
          builder: (context) => RegPage(),
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
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        color: Colors.black,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image: AssetImage("assets/images/image1.webp"),
        //   ),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Image(image: NetworkImage("data:image/jpeg;base64,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")),
              Image(
                image: AssetImage("assets/images/play_store_512.png"),
                height: 150,
                width: 150,
              ),
              Text(
                "MY APPLICATION",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}
