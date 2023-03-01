import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clippers(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Clippers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRect(
              child: Align(
                child: Image.network('assets/images/kochi.jpg'),
              ),
            ),
            ClipPath(
              clipper: StarClipper(6),
              child: Container(
                  height: 300,
                  child: Image.asset('assets/images/night.jpg')),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(100),
            //   child: Image.asset('assets/images/idukki.jpg'),
            // ),
            // ClipOval(
            //   child: Image.asset('assets/images/munnar.jpg'),
            // ),

          ],
        ),
      ),
    );
  }
}