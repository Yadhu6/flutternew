import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridpgm(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));

}

class Gridpgm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view program'),
      ),
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent
        (maxCrossAxisExtent: 90.0,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 1.0),
      children: List.generate(10, (index){
        return Card(
        child: Center(
        child: Image(
          image: AssetImage('assets/images/fish.jfif'),
        ),
        ),
        );
          }
    ),
    ));
  }

}