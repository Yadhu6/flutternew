import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism(),
  ));
}

class Tourism extends StatelessWidget {
  var place=['assets/images/alapuzha.jpg','assets/images/kochi.jpg','assets/images/clement.jpg',
  'assets/images/alejandro.jpg','assets/images/city1.jpg','assets/images/city2.jpg'];
  var head=['Venice','Italy','Thailand','Tokyo','Moscow','NewYork'];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text('Popular Places',
          style: GoogleFonts.abrilFatface(fontSize: 20),),
          Expanded(
            child: ListView.builder(
              itemCount: place.length,
              itemBuilder: (BuildContext context,index) {
                return SingleChildScrollView(
                  child:
                      Stack(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                    height: 200,
                                    width: 370,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(
                                          place[index]  ),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(10)
                                    ))),
                            Positioned(
                                top: 50,
                                left: 20,
                                child: Text(head[index], style: GoogleFonts.aboreto(
                                    fontSize: 30, color: Colors.red))),

                          ]),
                );
              }
              ),
          )
        ],
                ),
              ),
          );
  }
}