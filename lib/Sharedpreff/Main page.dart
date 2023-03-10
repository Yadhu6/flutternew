import 'package:flutter/material.dart';
import 'package:flutternew/Sharedpreff/Shared%20preference%20login%20page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mainpage extends StatefulWidget{
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  late SharedPreferences logindata;
  late String username;
  @override
  void initState(){
    initial();
  }
  void initial() async{
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/wayanad.jpg')),
          Center(
            child: Text('Hai $username, Welcome'),
          ),
          ElevatedButton(onPressed: (){
            logindata.setBool('newuser', true);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginshare()));
          }, child: Text('Logout'))
        ],
      ),
    );
  }
}