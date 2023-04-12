import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Helpers classes.dart';

class OTP_UI extends StatefulWidget {
  const OTP_UI({Key? key}) : super(key: key);

  @override
  State<OTP_UI> createState() => _OTP_UIState();
}

class _OTP_UIState extends State<OTP_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ElevatedButton(onPressed: (){
        AuthenticationHelper().signInWithCredential
      }, child: Text('Verify')),
    );
  }
}
