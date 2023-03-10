import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview (enabled: !kReleaseMode,
    builder: (context) =>MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MusicPlayer(),
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xF212121)
      )),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class MusicPlayer extends StatelessWidget {
  var pic=['assets/images/car1.jpg','assets/images/pop.png','assets/images/remix.jpg',
  'assets/images/tiktok.jpg','assets/images/topm.jpg'];
  int ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:ind ,
          onTap:  (taped_index){
          },
          items: [BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,size: 20,),label: 'Home',backgroundColor: Colors.green),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30,),label: 'Search',backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.add,size: 30,),label: 'New',backgroundColor: Colors.greenAccent),
      ]),
      appBar: AppBar(
        title: Text('Playlists',style: GoogleFonts.abrilFatface(),
      ),
      ),
    body: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 390,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red,width: 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //color: Colors.blue,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search..'
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 5,
            itemBuilder: (context,index){
              return Card(
child: Image(image: NetworkImage(pic[index])),
              );
            }),
          ),
        ],
      ),
    ),
    );
  }
}