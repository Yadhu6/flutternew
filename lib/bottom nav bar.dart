import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnav(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Bottomnav extends StatefulWidget{
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List Screen=[
   Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('New')),
    Center(child: Text('Camera')),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
          selectedItemColor: Colors.teal,
          snakeViewColor: Colors.red,
          snakeShape: SnakeShape.indicator,
          currentIndex: index,
          onTap: (taped_index){
            setState(() {
              index=taped_index;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: 'Home',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30,),label: 'Search',backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.add,size: 30,),label: 'New',backgroundColor: Colors.greenAccent),
        BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp,size: 30,),label: 'Camera',backgroundColor: Colors.indigoAccent),
        // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
        // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
      ]),
      body: Screen[index],
    );
  }
}