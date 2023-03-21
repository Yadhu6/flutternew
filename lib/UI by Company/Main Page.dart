import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Secondpage.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UICompany(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class UICompany extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFFFF176), Color(0xFFF06292), Colors.grey])),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 20),
                child: Text('Enter the invoice number',
                    style:
                        GoogleFonts.aldrich(fontSize: 15, color: Colors.blue)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Eg:658554'),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 560.0,left: 30),
                    child: SizedBox(
                        height:35,
                        width: 120,
                        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.grey)
                          ,child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios),
                              Text('Back',style: TextStyle(fontSize: 20),),
                            ],
                          ),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 560.0,left: 90),
                    child: SizedBox(
                        height:35,
                        width: 120,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                        },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue)
                          ,child: Row(
                            children: [
                              Icon(Icons.arrow_forward_ios),
                              Text('Next',style: TextStyle(fontSize: 20),),
                            ],
                          ),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
