import 'package:flutter/material.dart';
import 'package:flutternew/Sharedpreff/Main%20page.dart';
import 'package:flutternew/Sharedpreff/Registration%20page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginshare(),
      useInheritedMediaQuery: true,
    ),
  );
}

class Loginshare extends StatefulWidget {
  @override
  State<Loginshare> createState() => _LoginshareState();
}

class _LoginshareState extends State<Loginshare> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;
  late bool newuser;
  var uname;
  late String pswd;
  late String name;

  @override
  void initState() {
    already_login();
    getValue();
  }

  void getValue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      pswd = logindata.getString('password')!;
    });
  }

  void already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true); //null ?? second
    print(newuser);

    if (newuser == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Mainpage()));
    }
  }

  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Form',
              style: GoogleFonts.abyssinicaSil(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image(image: AssetImage('assets/images/alapuzha.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextFormField(
                controller: username_controller,
                decoration: InputDecoration(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.account_circle),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: TextFormField(
                controller: password_controller,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.admin_panel_settings_sharp),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                  width: 220,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        String username = username_controller.text;
                        String password = password_controller.text;

                        if (username != '' &&
                            password != '' &&
                            username == uname &&
                            password == pswd) {
                          print('Successful');
                          logindata.setBool('newuser', false);
                          //logindata.setString('username', username);
                          //logindata.setString('password', password);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Mainpage()));
                        }
                      },
                      child: Text('Login'))),
            ),
            TextButton(
                onPressed: () {
                  debugPrint(uname);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegPage()));
                },
                child: Text('Signup for new user'))
          ],
        ),
      ),
    );
  }
}
