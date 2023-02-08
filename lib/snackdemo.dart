import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Snackdemo(),
  )
  );
}
class Snackdemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
        child: ElevatedButton(
        onPressed: () {
      final snackBar = SnackBar(
        backgroundColor: Colors.deepOrangeAccent,
        content: const Text('Yay! A SnackBar!'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }, child: Text('Show snack bar'),)));

}}