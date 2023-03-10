import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/Sharedpreff/Shared%20preference%20login%20page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegPage extends StatefulWidget {


  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  void registerr() async{
    logindata = await SharedPreferences.getInstance();

    String name = name_controller.text;
    String username = username_controller.text;
    String password = password_controller.text;

    if(username != '' && password !='') {
      logindata.setString('name', name);
      logindata.setString('username', username);
      logindata.setString('password', password);
    }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginshare()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      body: Column(
        children: [
          Text('SIgnUp page',style: GoogleFonts.aguafinaScript(fontSize: 30),),
          Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 25,right: 25),
            child: TextFormField(
              controller: name_controller,
              decoration: InputDecoration(
                hintText: 'Name',
                prefixIcon: Icon(Icons.account_circle)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 25,right: 25),
            child: TextFormField(
              controller: username_controller,
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.ac_unit_sharp)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0,left: 25,right: 25),
            child: TextFormField(
              controller: password_controller,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.ac_unit_sharp)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(onPressed: (){
                  registerr();
                }, child: Text('SignUp'))),
          )
        ],
      ),
    );
  }
}
