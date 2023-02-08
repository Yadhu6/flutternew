import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridpro(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));

}

class Gridpro extends StatelessWidget {
var pic=['House','Bell','Camera','Ticket','Phone','Apple','Cablecar','Ebay','Laptop'];
var ico=[FontAwesomeIcons.house,
FontAwesomeIcons.bell,
FontAwesomeIcons.camera,
FontAwesomeIcons.ticket,
FontAwesomeIcons.phone,
FontAwesomeIcons.apple,
  FontAwesomeIcons.cableCar,
  FontAwesomeIcons.ebay,
  FontAwesomeIcons.laptop
];
var color=[Colors.blue,Colors.orange,Colors.green,Colors.red,Colors.grey,
Colors.amberAccent,Colors.lightGreen,Colors.lightGreen,Colors.pink[800]];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view program'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
      ,mainAxisExtent: 90),
          itemCount: 9,
          itemBuilder:(context,index){
        return Padding(
          padding: EdgeInsets.all(10),
            child:Container(
              decoration:  BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo,
                    spreadRadius: 1,blurRadius: 2
                  )
                ],
                borderRadius: BorderRadius.circular(10),
            color: color[index],
              ),


            child: Center(
              child: ListTile(leading: Icon(ico[index]),
                title: Text(pic[index],textAlign: TextAlign.center,),



          ),
            ),
        ));
    }
    ));
  }}