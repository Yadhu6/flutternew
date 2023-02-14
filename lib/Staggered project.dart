import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Staggeredpro(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Staggeredpro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 6,
              mainAxisSpacing: 7,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(
                        color: Colors.white70,
                        blurRadius: 20.0,
                      )]
                  ),
                    child: Column(
                      children: [
                        Image(
                          image:
                              NetworkImage('assets/images/city1.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Mysteries of the universe',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('20 Jun 2013',textAlign: TextAlign.right,),
                        ),
                        Text('Carl Sagan')
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 6,
                  child: Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Image(
                          image:
                          NetworkImage('assets/images/city2.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '10 Tips for Hipster',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('19 Jun 2013',textAlign: TextAlign.left,),
                        ),
                        Text('Ernest Hemingway')
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 6,
                  child: Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Image(
                          image:
                          NetworkImage('assets/images/baloon.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'An Empire State of Canda',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('17 Jun 2013',textAlign: TextAlign.left,),
                        ),
                        Text('Vincent Van Gogh')
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 3.5,
                  child: Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Image(
                          image:
                          NetworkImage('assets/images/night.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'My story of travelling ',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('17 Jun 2013',textAlign: TextAlign.left,),
                        ),
                        Text('Henry Carl')
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
