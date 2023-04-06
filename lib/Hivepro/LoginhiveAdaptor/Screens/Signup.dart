import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Hivepro/LoginhiveAdaptor/Screens/Loginn.dart';
import 'package:get/get.dart';
import '../Databasee/DBFn.dart';
import '../Modelclass/usermodelclass.dart';

class Signuphive extends StatelessWidget {
  final mail = TextEditingController();
  final pass = TextEditingController();

  void validateSignup(List<User> userlist) async {
    final mailid = mail.text.trim();
    final pswd = pass.text.trim();

    bool isUserfound = false;

    final emailvalidation = EmailValidator.validate(mailid);

    if (mailid != "" && pswd != "") {
      if (emailvalidation == true) {
        await Future.forEach(userlist, (users) {
          if (users.mail == mailid) {
            isUserfound = true;
          } else {
            isUserfound = false;
          }
        });
        if (isUserfound == true) {
          Get.snackbar("Error", 'User already registered');
        } else {
          final passvalidation = checkPassword(pswd);
          if (passvalidation == true) {
            final user = User(mail: mailid, pass: pswd);
            await Databasee.instance.userSignup(user);
            Get.back();
            Get.snackbar(
                "Success", 'Successfully registered', colorText: Colors.red);
          }}
        } else {
        Get.snackbar("Error", 'Enter valid Mailid', colorText: Colors.red);
      }

    }else{
      Get.snackbar("Error", 'Please check the credentials',colorText: Colors.red);
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
              onPressed: ()async {
                final userlist = await Databasee.instance.getUser();
                validateSignup(userlist);
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
