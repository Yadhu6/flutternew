import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview (enabled: !kReleaseMode,
    builder: (context) =>MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Profile2(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Profile2 extends StatelessWidget {
  //const Profile2({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(backgroundColor: Colors.white,
     leading: const Icon(Icons.arrow_back,color: Colors.black,),
     actions: const [
       Icon(Icons.menu_sharp,color: Colors.black,)
     ],
   ),
   body: Column(
children: [
  const Padding(
    padding: EdgeInsets.only(top: 30.0),
    child: Center(child: CircleAvatar(
      radius: 80,
    backgroundImage: AssetImage('assets/images/CristianoRonaldo.jpg'),
    )),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Logo(Logos.facebook_f),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Logo(Logos.twitter),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Logo(Logos.linkedin),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Logo(Logos.instagram),
        )
      ],
    ),
  ),
  const Padding(
    padding: EdgeInsets.only(top: 40.0),
    child: Text("Christiano Ronaldo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
  ),
  const Text('Athlete. 162M followers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
  const Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Text('Portuguese football player'),
  ),
  Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child:
         SingleChildScrollView(
           child: Column(
                  children: [
                      Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.white),
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                          color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.private_connectivity),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('Privacy',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.settings),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('Settings',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 170.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.push_pin),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('History',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.support_agent_outlined),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('Help and Support',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 120.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.groups),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('Invite Friend',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.more_time),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('More',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 190.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            color: Colors.grey[300]
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.person),
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Text('Profile',textAlign: TextAlign.center,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 190.0),
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
         ),
          ),
 )],
      ),
    );

  }
}