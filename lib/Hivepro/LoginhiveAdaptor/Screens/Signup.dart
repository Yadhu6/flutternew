import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Hivepro/LoginhiveAdaptor/Screens/Loginn.dart';
import 'package:get/get.dart';
import '../Modelclass/usermodelclass.dart';

class Signuphive extends StatelessWidget {
  final mail = TextEditingController();
  final pass = TextEditingController();

  void validateSignup() async {
    final mailid = mail.text.trim();
    final pswd = pass.text.trim();

    final emailvalidation = EmailValidator.validate(mailid);

    if (mailid != "" && pswd != "") {
      if (emailvalidation == true) {
        final passvalidation = checkPassword(pswd);
        if (passvalidation == true) {
          final user = User(mail: mailid, pass: pswd);
        }
      }
    }
  }

  checkPassword(String pswd) {
    if (pswd.length < 6) {
      Get.snackbar("Error", 'Check password');
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: mail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter mail id',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              obscuringCharacter: '*',
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                validateSignup();
              },
              child: Text('SignUp')),
          TextButton(
              onPressed: () {
                Get.to(() => Loginhive());
              },
              child: Text('Registered user? Login here..'))
        ],
      ),
    );
  }
}
