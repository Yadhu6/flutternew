import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Music2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Music2 extends StatefulWidget {
  @override
  State<Music2> createState() => _Music2State();
}

class _Music2State extends State<Music2> {
  var ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: ind,
          onTap: (taped_index) {
            setState(() {
              ind = taped_index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 20,
                ),
                label: 'Home',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  size: 30,
                ),
                label: 'Search',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 30,
                ),
                label: 'New',
                backgroundColor: Colors.greenAccent),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Text(
                'Musify',
                style:
                    GoogleFonts.acme(fontSize: 40, fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 170),
                child: Text(
                  'Suggested playlits',
                  style: GoogleFonts.acme(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 300.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2)),
                items: [
                  'assets/images/remix.jpg',
                  'assets/images/pop.png',
                  'assets/images/topm.jpg',
                  'assets/images/tiktok.jpg',
                  'assets/images/car1.jpg'
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(i))),
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 140),
                child: Text(
                  'Recommended for you',
                  style: GoogleFonts.abel(fontSize: 20, color: Colors.red),
                ),
              ),
              ListTile(
                leading: Image(image: AssetImage('assets/images/joseph.jpg')),
                title: Text(
                  'Hero',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                    Text('Taylor Swift', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Image(image: AssetImage('assets/images/orange.jpg')),
                title: Text(
                  'Unholy',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                Text('Sam Smith', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),ListTile(
                leading: Image(image: AssetImage('assets/images/clement.jpg')),
                title: Text(
                  'Lift Me Up',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                Text('Rihanna', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),ListTile(
                leading: Image(image: AssetImage('assets/images/kochi.jpg')),
                title: Text(
                  'I was in Beach',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                Text('Dax', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),ListTile(
                leading: Image(image: AssetImage('assets/images/munnar.jpg')),
                title: Text(
                  'Depression',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                Text('David Guetta', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),ListTile(
                leading: Image(image: AssetImage('assets/images/hari.jpg')),
                title: Text(
                  'I\'m Done',
                  style: TextStyle(color: Colors.pink),
                ),
                subtitle:
                Text('Bebe Rexha', style: TextStyle(color: Colors.black)),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.download, color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
