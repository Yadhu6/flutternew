import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Firebase/Helper%20class.dart';
import 'HomePage.dart';
import 'Registration page.dart';

class loginpage extends StatelessWidget {
  final form1 = GlobalKey<FormState>();
  String? mail;
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Form(
          key: form1,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onSaved: (valid) {
                      mail = valid;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock_open_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        // suffixIcon: GestureDetector(
                        //   onTap: () {
                        //     // setState((){
                        //     //   obscuretext = !obscuretext;
                        //     // });
                        //   },
                        // )
                    ),
                    onSaved: (values) {
                      pass = values;
                    }),
              ),
              ElevatedButton(
                  onPressed: () {
                    form1.currentState!.save();
                    Authhelper()
                        .signIn(valid: mail!, values: pass!)
                        .then((results) {
                      if (results == null) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => HomeMain()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          results,
                        )));
                      }
                    });
                  },
                  child: Text('Login')),
              TextButton(
                  onPressed: () => registration(), child: Text('Register here..'))
            ],
          ),
        ),
      ),
    );
  }
}
