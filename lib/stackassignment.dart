import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stackassign(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Stackassign extends StatelessWidget{
  var pic=['assets/images/adrian.jpg','assets/images/alejandro.jpg',
    'assets/images/clement.jpg','assets/images/pedro.jpg',
    'assets/images/joseph.jpg','assets/images/yong.jpg','assets/images/victor.jpg'];
  var city=['Delhi','London','Torento','Newyork','Kochi','Rio','Beijing'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cities'),backgroundColor:Colors.deepOrange ,

      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 7,
          itemBuilder: (context,index){
        return Stack(
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image:NetworkImage(pic[index]),
                   fit: BoxFit.fill
               ),
             ),
             ),
           ),
            Positioned(
              top: 150,
                left: 100,
                child: Text(city[index],style: TextStyle(color: Colors.white,
                    fontSize: 20,fontWeight: FontWeight.bold)))
          ],
        );
      }),
      
    );
  }
}