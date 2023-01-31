import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/secondnew.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Login Page',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 20),
              child: TextFormField(
                validator: (Username) {
                  if (Username!.isEmpty) {
                    return 'Enter a valid user name';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.add_a_photo_sharp),
                    hintText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
              child: TextFormField(
                validator: (Password) {
                  if (Password!.isEmpty ||
                      !Password.contains('@',) ||
                      Password.length < 5) {
                    return 'Enter a valid password';
                  } else {
                    return null;
                  }
                },
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.ac_unit_sharp),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: 'Password'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      } else {
                        return null;
                      }
                    },
                    child: Text("Login")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
