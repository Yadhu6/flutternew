import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{

  var txt=['My Wallet','Terms & Policies','About','Logout'];
  var icon=[Icons.wallet,Icons.terminal_sharp,Icons.account_circle_rounded,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFFFF176), Color(0xFFF06292), Colors.grey])),

          child: Column(
            children: [
              Card(
                // height: 400,
                // width: double.infinity,
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(50),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage('assets/images/hari.jpg')),
                    ),
                    Text('Dennis Callis',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0,top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.mail,color: Colors.blueAccent,),
                          Text('denniscallis587@gmail.com'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0,top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.phone_android_sharp,color: Colors.blueAccent,),
                          Text('+91 9585267411'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(onPressed: (){},
                          child: Text('Edit Profile')),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFFFFF176), Color(0xFFF06292), Colors.grey])),
                  child: ListView.builder(
                    itemCount: txt.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              height: 50,
                              width: 360,
                              decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Icon(icon[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text(txt[index]),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 230.0),
                                  //   child: Icon(Icons.arrow_forward_ios),
                                  // )
                                ],
                              ),),
                          ),

                        ],
                      );
                    } ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}