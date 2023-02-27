import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Hotel%20UI/page3.dart';
import 'package:icons_plus/icons_plus.dart';

import 'Page2.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tour1(),
      routes: {'screen': (context) => places()},
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Tour1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body:Padding(
         padding: const EdgeInsets.only(top:20.0),
         child: Column(
           children:  [
             SizedBox(
               height: 300,
               child: CircleAvatar(radius: 300,
                 backgroundImage: NetworkImage('https://i1.sndcdn.com/artworks-000216413440-76xuyr-t500x500.jpg'),
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 50.0),
               child: SizedBox(width: 130,
                 child: ElevatedButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(
                     builder: (context) => Details()));
                 }, child: Text('Log In'),style: ButtonStyle(shape:
                 MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20.0),
               child: Text('-Or-',style: TextStyle(fontSize: 20,color: Colors.black87),),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Container(
                 height: 50,
                 width: 350,
                 decoration: BoxDecoration(color: Colors.blue,
                     border: Border.all(width: 2,color: Colors.white),
                     borderRadius:
                     const BorderRadius.all(Radius.circular(20))),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 7.0),
                       child: Text('Login With Facebook',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 170.0),
                       child: Icon(BoxIcons.bxl_facebook),
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 13.0),
               child: Container(
                 height: 50,
                 width: 350,
                 decoration: BoxDecoration(color: Colors.redAccent,
                     border: Border.all(width: 2,color: Colors.white),
                     borderRadius:
                     const BorderRadius.all(Radius.circular(20))),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 7.0),
                       child: Text('Login With Google',style: TextStyle(
                           fontWeight: FontWeight.bold,color: Colors.white),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 185.0),
                       child: Icon(BoxIcons.bxl_google),
                     )
                   ],
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 13.0),
               child: Container(
                 height: 50,
                 width: 350,
                 decoration: BoxDecoration(color: Colors.lightBlueAccent[200],
                     border: Border.all(width: 2,color: Colors.white),
                     borderRadius:
                     const BorderRadius.all(Radius.circular(20))),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 7.0),
                       child: Text('Login With Twitter',style: TextStyle(
                           fontWeight: FontWeight.bold,color: Colors.white),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 185.0),
                       child: Icon(EvaIcons.twitter),
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
       ));
  }
}