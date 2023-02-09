import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stackdemo(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Stackdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(color: Colors.blue),
            ),
            Positioned(
              left: 20,
                right: 20,
                top: 600,
                child: Icon(Icons.account_circle,size: 60,)),
            Positioned(
              top: 60,
                child: Container(color: Colors.red,width: 200,height: 300,)),
          ],
        ),
      ),
    );
  }
}