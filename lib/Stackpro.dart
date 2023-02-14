import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stackpro(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Stackpro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.keyboard_voice_rounded)],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image1.webp'),
                      fit: BoxFit.fill,
                    ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
              ),
              ),
            ],
          ),
          Positioned(
            top: 265,
            left: 150,
            child: CircleAvatar(radius: 60,
              backgroundImage: NetworkImage('assets/images/CristianoRonaldo.jpg'),
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.message),
            ),
          ),
          Positioned(
            top: 300,
            left: 320,
            child: CircleAvatar(
              radius: 20,
              child: FaIcon(FontAwesomeIcons.add),
            ),
          ),
          Positioned(
            top: 400,
              left: 125,
              child: Text('Christiano Ronaldo',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Positioned(
            top: 430,
            left: 155,
            child: Text('Football player',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.redAccent),),
          )
        ],
      ),
    );
  }
}
