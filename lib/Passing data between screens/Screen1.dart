import 'package:flutter/material.dart';
import 'package:flutternew/Passing%20data%20between%20screens/dummy_data.dart';

import 'Screen2.dart';

void main(){
  runApp(MaterialApp(
    home: Screen1(),
    routes: {
      'screen': (context) => Screen2(),
    },
  ));
}
class Screen1 extends StatelessWidget {
  //const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map data'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children:
          dummyproducts.map((e){
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(e['Image']),),
              title: Text(e['Product']),
              onTap: ()=> goTosecond(context,e['ID']),
            );
          }).toList(),

      ),
    );
  }

  goTosecond(
      BuildContext context, productID) {
    Navigator.pushNamed(context, 'screen',arguments: productID);
  }
}
