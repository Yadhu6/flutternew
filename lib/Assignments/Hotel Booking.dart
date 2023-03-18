import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Hotelbooking(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: const Color(0xFFFFFFFF))),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Hotelbooking extends StatefulWidget {

  @override
  State<Hotelbooking> createState() => _HotelbookingState();
}

class _HotelbookingState extends State<Hotelbooking> {
  var pic=['assets/images/Hotel room.jpg','assets/images/Hotelroom2.jpg','assets/images/Hotelroom3.jpg',
  'assets/images/Hotelroom4.jpg','assets/images/Hotelroom5.jpg'];

  var txt1=['Crown Plaza','Taj','Marriot','Grand Hyatt','Radisson Blue'];

  var txt2=['\$200/night','\$180/night','\$210/night','\$300/night','\$245/night',];

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
          selectedItemColor: Colors.teal,
          snakeViewColor: Colors.red,
          snakeShape: SnakeShape.indicator,
          currentIndex: index,
          onTap: (taped_index){
            setState(() {
              index=taped_index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,size: 30,),backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30,),backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.add,size: 30,),backgroundColor: Colors.greenAccent),
            BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp,size: 30,),backgroundColor: Colors.indigoAccent),
            // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
          ]),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                title: Padding(
                  padding: const EdgeInsets.only(right: 140.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 92.0),
                        child: Text(
                          'Hello Ram',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Text(
                        'Find your Favourite hotel',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/joseph.jpg'),
                    ),
                  )
                ],
                bottom: AppBar(
                  title: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search For Hotel...',
                          prefixIcon: Icon(Icons.search_outlined)),
                    ),
                  ),
                )),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text('Popular Hotels',style: GoogleFonts.aboreto(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  CarouselSlider(
                    items: List.generate(5, (index) {
                      return SizedBox(
                        height: 220,
                        width: 250,
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width:250,
                                child: Image(
                                  image: AssetImage(pic[index]),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Text(txt1[index],style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),
                              Text('A Five Star Hotel in Kochi'),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    Text(txt2[index]),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: Text('4.5'),
                                    ),
                                    Icon(Icons.star)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                    options: CarouselOptions(
                        height: 200,
                         viewportFraction: .46,
                    initialPage: 2,enableInfiniteScroll: false,
                    ),
                  ),
                ],
              ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                    child: Row(
                      children: [
                        Text('Hotel Packages',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Text('view all',style: TextStyle(color: Colors.blue,fontSize: 17),),
                        )
                      ],
                    ),
                  ),
            ])),
            SliverList(delegate: SliverChildBuilderDelegate((context, index){
              return SizedBox(
                height: 110,
                width: 50,
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          height: 300,
                          width:130,
                          child: Image(image: AssetImage(pic[index]),fit: BoxFit.fitHeight,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(txt1[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                            Text('A Five Star Hotel in Kochi'),
                            Text(txt2[index],style:TextStyle(color:Colors.blue)),
                            Row(
                              children: [
                                Icon(BoxIcons.bx_car,color: Colors.blue,),
                                Icon(BoxIcons.bx_radio,color: Colors.blue,),
                                Icon(BoxIcons.bx_wine,color: Colors.blue,),
                                Icon(BoxIcons.bx_wifi,color: Colors.blue,),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        color: Colors.lightGreenAccent,
                        child: Center(child: Text('Book')),
                      )
                    ],
                  ),
                ),
              );
    },childCount: pic.length)
            )],
        ),
      ),
    );
  }
}
