import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Expansiontiles extends StatelessWidget {
  List icon=[Colors.red,Colors.red,Colors.red,Colors.red,];
List comp=['Benz','BMW','VW','TATA'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile'),
      ),
      body: ExpansionTile(title: Text('Cars'),
      subtitle: Text('List of Cars'),
      children: List.generate(4, (index) => ListTile(
        leading: CircleAvatar(backgroundColor: icon[index],) ,
        title: Text(comp[index]),
        
      )),)

    );
  }
}
