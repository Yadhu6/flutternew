import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism2(),
  ));
}

class Tourism2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              const Image(image: AssetImage('assets/images/vagamon.jpg')),
              Padding(
                padding: const EdgeInsets.only(right: 430.0),
                child: Text('Italy',style: GoogleFonts.alkalami(fontWeight: FontWeight.bold,fontSize: 30),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Italy, officially the Italian Republic or the Republic of Italy, is a country in Southern and Western Europe. Located in the middle of the Mediterranean Sea, "
                    "it consists of a peninsula delimited by the Alps and surrounded by several islands; its territory largely coincides with the homonymous geographical region. Italy shares land borders with France, Switzerland, Austria, Slovenia and the enclaved microstates of Vatican City and San Marino. "
                    "It has a territorial exclave in Switzerland, Campione. Italy covers an area of 301,230 km2 (116,310 sq mi), with a population of about 60 million. It is the third-most populous member state of the European Union, the sixth-most populous country in Europe,"
                    " and the tenth-largest country in the continent by land area. Italy's capital and largest city is Rome.",
                  textAlign: TextAlign.justify,),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 380.0),
                child: Text('Places to Visit',style: TextStyle(color: Colors.black,fontSize: 17),),
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('assets/images/clement.jpg'),fit: BoxFit.fill
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 70,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage('assets/images/city2.jpg'),fit: BoxFit.fill)
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(image: AssetImage('assets/images/city1.jpg'))
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(image: AssetImage('assets/images/kochi.jpg'))
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}