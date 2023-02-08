import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listseperate extends StatelessWidget{
  var datas=<String>['Data1','Data2','Data3'];
  var color=<int>[100,200,150];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview with builder'),
      ),
        body: ListView.separated(
            itemCount: datas.length,
            itemBuilder: (BuildContext,i){
              return Container(
                child: Text(datas[i]),
                color: Colors.cyan[color[i]],
              );
            }, separatorBuilder: (BuildContext context, int index) {
              return Divider(thickness: 10,);
        },),
    );
  }

}