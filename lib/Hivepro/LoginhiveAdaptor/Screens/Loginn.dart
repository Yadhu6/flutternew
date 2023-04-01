import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Signup.dart';

class Loginhive extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Column(
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(
              hintText: 'Enter mail id',
            ),
          ),
          TextField(
            obscuringCharacter: '*',
            obscureText: true,
            controller: password,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Login')),
          TextButton(
              onPressed: () {
                Get.to(() => Signuphive());
              },
              child: Text('Not a user? Register here..'))
        ],
      ),
    );
  }
}
