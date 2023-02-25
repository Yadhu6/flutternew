import 'dart:math';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomSheetMain(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class BottomSheetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ Container(
          child: const RiveAnimation.asset('assets/animations/vehicles.riv',fit: BoxFit.fill,
          ),
        ),Center(
          child: GestureDetector(
              onDoubleTap: () {
                showSheet(context);
              }, child: Text('Click to show bottom sheet')),
        ),
      ]),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(

        child: Column(
          mainAxisSize:MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Share by',style: TextStyle(fontSize: 25),),
            ListTile(
              leading:Icon(EvaIcons.email),
              title:Text('Gmail'),
            ),
            ListTile(
              leading:Logo(Logos.netflix),
              title:Text('Netflix'),
            ),
            ListTile(
              leading:Logo(Logos.whatsapp),
              title:Text('WhatsApp'),
            ),
          ],
        )
      );
    });
  }
}

