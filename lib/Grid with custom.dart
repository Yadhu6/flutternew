import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridcustom(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));

}

class Gridcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
     mainAxisSpacing: 1 )
         , childrenDelegate: SliverChildBuilderDelegate(
             (context,index){
               return Image(image: AssetImage('assets/images/apple.webp'),
                 
               );
             },
           
         ),
     ),
   );
  }
}