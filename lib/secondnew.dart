import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),body: Center(
      child: Text('Welcome Home',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
    ),);
  //     body: Container(
  //       color: Colors.amberAccent,
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 30),
  //             child: Text(
  //               'Login Page',
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold, fontSize: 50, color: Colors.blue),
  //             ),
  //           ),
  //           Icon(Icons.ac_unit,size: 60),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 100,right: 100,top: 30),
  //             child: TextField(
  //
  //               decoration:InputDecoration(labelText: 'User',
  //                   icon: Icon(Icons.accessibility_outlined),
  //                   border: OutlineInputBorder(),
  //               hintText: 'Username') ,
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 100,right: 100,top: 30),
  //             child: TextField(
  //               decoration: InputDecoration(border: OutlineInputBorder(),hintText: "Password",
  //               icon: Icon(Icons.ac_unit_rounded)),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(30.0),
  //             child: ElevatedButton(onPressed: () {}, child: Text('Sign In'),),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: const Text('Not a user? Register here.'),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}}
