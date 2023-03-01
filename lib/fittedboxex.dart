import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fitboxx extends StatelessWidget {
 // const Fitboxx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Card(
              color: Colors.indigoAccent,
              child: Row(
                children: [
                  Container(
                    child: Text('Understand with fitted box'),
                  ),
                  Container(
                    child: Image.asset('assets/images/alapuzha.jpg'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
