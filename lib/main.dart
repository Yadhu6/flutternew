import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainScreen()));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            //Icon(Icons.add_a_photo_sharp,size: 100,),
            Image(image:AssetImage("assets/icons/wtsap.png" ),height: 100,width: 100, ),
            Text(
              "New App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            )
          ],
        ),
      ),
      // appBar:AppBar(title:Text('My application')),
      // body:Center(child:Icon(Icons.ac_unit_outlined,size:100,color:Colors.green,),
      // ),
    );
  }
}
