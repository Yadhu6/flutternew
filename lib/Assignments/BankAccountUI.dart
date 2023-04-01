import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
    backgroundColor: Colors.blueGrey,
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BankUI(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class BankUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [Text('Welcome!'), Text('MAUSAM')],
          ),
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.qr_code),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              // height: double.infinity,
              // color: Colors.blue,
              // width: double.infinity,
              child: Column(children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Container(
                  height: 641,
                  width: double.infinity,
                ),
              ]),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                height: 130,
                width: 350,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 46,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/alejandro.jpg'),
                        radius: 42,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SAMMUNATI BACHAT KHATA'),
                          Row(
                            children: [
                              Text(
                                'NPR',
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                '1,00,999.35',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Text('284569882664')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              height: 1000,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(HeroIcons.currency_rupee,color: Colors.red,size: 40,),
                      Text('WOULD YOU LIKE TO?',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Container(
                      height: 270,
                      color: Colors.blue,
                      width: 400,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Card();
                          }),
                  )],
              ),
            ),
          )
          ]),
        ));
  }
}
