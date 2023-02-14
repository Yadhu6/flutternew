import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutternew/custom%20widget.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Staggereddemo(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Staggereddemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 6,
            mainAxisSpacing: 5,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 3,
                child: MyCustomwidget(
                  icons: Icons.account_circle,
                  label: 'Hello',
                  //bgcolor: Colors.redAccent,
                ),
              ),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: MyCustomwidget(
                    icons: Icons.cabin_sharp,
                    label: 'This is new',
                    bgcolor: Colors.pink,
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.redAccent,
                    child: Column(
                      children: [
                        Icon(Icons.add_a_photo_sharp,size: 30,),
                        Row(
                          children: [
                            Icon(Icons.accessibility_new_sharp),
                            Text('Hello my dear')
                          ],
                        )
                      ],
                    ),
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 3,
                  child: Card(
                    color: Colors.blue,
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    color: Colors.orange,
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 3,
                  child: Card(
                    color: Colors.greenAccent,
                  )),
              StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 4,
                  child: Card(
                    color: Colors.greenAccent,
                  )),
              Card(
                color: Colors.greenAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
