import 'package:flutter/material.dart';
import 'package:flutternew/Hivepro/LoginhiveAdaptor/Modelclass/usermodelclass.dart';
import 'package:get/get.dart';
import '../Databasee/DBFn.dart';
import 'Homepage.dart';
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
          ElevatedButton(onPressed: ()async {
           final userlist = await Databasee.instance.getUser();
           checkUser(userlist); //check the entered value found in DB
          }, child: Text('Login')),
          TextButton(
              onPressed: () {
                Get.to(() => Signuphive());
              },
              child: Text('Not a user? Register here..'))
        ],
      ),
    );
  }

  Future<void> checkUser(List<User> userlist)async {
    final mails=email.text.trim();
    final pwd=password.text.trim();
    bool isUserfound = false;
    final validateEmpty = await ValidateLogin(mails,pwd);
    if(validateEmpty==true){
      await Future.forEach(userlist, (users) {
        if(users.mail==mails && users.pass==pwd){
          isUserfound = true;
        }else{
          isUserfound = false;
        }
      });
      if(isUserfound == true){
        Get.offAll(()=>Home());
        Get.snackbar("Success", 'Successfully login');
      }else{
        Get.snackbar("Error", 'Enter valid credentials');
      }
    }
  }

  Future<bool>ValidateLogin(String mails, String pwd) async {
    if(mails!='' && pwd!= ''){
      return true;
    }else{
      Get.snackbar("Error", 'Enter valid credentials');
      return false;
    }
  }
}
