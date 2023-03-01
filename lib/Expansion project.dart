import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rive/rive.dart';

class Expro extends StatelessWidget {
  List icon = [
   PixelArtIcons.dollar,LineAwesome.android
  ];
  List comp = ['25000','100% Placement'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'EXPERIENCE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    //color: Colors.lightBlueAccent,
                    child: Stack(children: [
                      RiveAnimation.network(
                          'https://public.rive.app/community/runtime-files/4026-8365-year-of-the-rabbit.riv',fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SingleChildScrollView(
                          child: ExpansionTile(
                            title: Text('Flutter Internship',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                                color: Colors.white)),
                            subtitle: Text('6 months +',style: TextStyle(color: Colors.white)),
                            children: List.generate(
                                2,
                                (index) => ListTile(
                                      leading: CircleAvatar(
                                          child: Icon(icon[index])),
                                      title: Text(comp[index],style: TextStyle(color: Colors.white)),
                                    )),
                          ),
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    //color: Colors.lightBlueAccent,
                    child: Stack(children: [
                      RiveAnimation.network(
                          'https://public.rive.app/community/runtime-files/4347-8939-double-helix-loader.riv',
                      fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SingleChildScrollView(
                          child: ExpansionTile(
                            title: Text('Android Training',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                            color: Colors.white),),
                            subtitle: Text('2 months',style: TextStyle(color: Colors.white),),
                            children: List.generate(
                                2,
                                (index) => ListTile(
                                      leading: CircleAvatar(
                                          child: Icon(icon[index])),
                                      title: Text(comp[index],style: TextStyle(color: Colors.white)),
                                    )),
                          ),
                        ),
                      ),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    //color: Colors.lightBlueAccent,
                    child: Stack(children: [
                      RiveAnimation.network(
                          'https://public.rive.app/community/runtime-files/4066-8427-chaotic-queens.riv',fit: BoxFit.cover,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SingleChildScrollView(
                          child: ExpansionTile(
                            title: Text('Java Training',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                                color: Colors.white)),
                            subtitle: Text('2 months',style: TextStyle(color: Colors.white)),
                            children: List.generate(
                                2,
                                (index) => ListTile(
                                      leading: CircleAvatar(
                                          child: Icon(icon[index])),
                                      title: Text(comp[index],style: TextStyle(color: Colors.white),),
                                    )),
                          ),
                        ),
                      ),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
