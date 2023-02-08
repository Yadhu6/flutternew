import 'package:flutter/material.dart';

class Listview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var datas=<String>['Data1','Data2','Data3'];
    var color=<int>[100,200,150];
   return Scaffold(
     appBar: AppBar(title: Text('Listview with builder'),
     ),
     body: ListView.builder(
         itemCount: datas.length,
         itemBuilder: (BuildContext,i){
       return Container(
         child: Center(child: Text(datas[i],style: TextStyle(fontSize: 100),)),
         color: Colors.cyan[color[i]],
       );
     }),
   );
  }

}