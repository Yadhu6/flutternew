import 'package:flutter/material.dart';
import 'package:flutternew/Firebase/Helper%20class.dart';
import 'package:icons_plus/icons_plus.dart';

import 'Login Page.dart';

class registration extends StatefulWidget {
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final formkey = GlobalKey<FormState>();

  String? email;
  String? password;
  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Form(
      key: formkey,
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Logo(Logos.google,size: 40,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onSaved: (val) {
                    email = val;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    // suffixIcon:GestureDetector(
                    //onTap:(){
                    // setState((){
                    //   obscuretext = !obscuretext;
                    // });
                    //},
                    // )
                  ),
                  onSaved: (value) {
                    password = value;
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                  onPressed: () {
                    // if (formkey.currentState!.validate()) {
                     formkey.currentState!.save();

                      Authhelper()
                          .signUp(val: email!, value: password!)
                          .then((result) {
                        if (result == null) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                            result,
                          )));
                        }
                      });
                    //}
                  },
                  child: Text('Register')),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
                child: Text('Login here..'))
          ],
      ),
    ),
        ));
  }
}
