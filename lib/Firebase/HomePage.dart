import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Helper class.dart';
import 'Registration page.dart';

class HomeMain extends StatefulWidget {


  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 700,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/idukki.jpg'),fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: ElevatedButton(onPressed: (){
                    Authhelper()
                        .signOut()
                        .then((_) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (contex) => registration()),
                    ));
                  },
                      child: Text('Signout')),
                ),
                // FloatingActionButton(onPressed: (){ Authhelper()
                //     .signOut()
                //     .then((_) => Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (contex) => registration()),
                // ));
                // },
                // tooltip: 'Logout',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
