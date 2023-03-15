import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotelhome(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: const Color(0xFF2E7D32))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotelhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            leading: Icon(Icons.menu_sharp),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(BoxIcons.bx_heart),
              ),
            ],
            bottom: AppBar(
              title: Container(
                height: 30,
                width: double.infinity,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Type your Location',
                      prefixIcon: Icon(Icons.search_outlined)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          BoxIcons.bx_hotel,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'Hotel',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          BoxIcons.bx_restaurant,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          BoxIcons.bx_coffee_togo,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'Cafe',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 300,
                    width: 400,
                    child:
                        Image(image: NetworkImage('assets/images/Hotel room.jpg'),fit: BoxFit.cover,)),
              ),
              Positioned(
                top: 250,
                left: 300,
                child: Container(
                  height: 40,
                  width: 50,
                  color: Colors.white,
                  child: Center(child: Text('\$40',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              )
            ]),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 10),
                  child: Text('Awesome room near Boudha',style: GoogleFonts.alkalami(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Boudha, Kathmandu',style: GoogleFonts.alkalami(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.lightGreenAccent,),
                      Icon(Icons.star,color: Colors.lightGreenAccent,),
                      Icon(Icons.star,color: Colors.lightGreenAccent,),
                      Icon(Icons.star,color: Colors.lightGreenAccent,),
                      Icon(Icons.star,color: Colors.lightGreenAccent,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text('(220 reviews)'),
                      )
                    ],
                  ),
                )
          ]))
        ],
      ),
    );
  }
}
