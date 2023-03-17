import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

class Hotelbooking extends StatelessWidget {

  var pic=['assets/images/Hotel room.jpg','assets/images/Hotelroom2.jpg','assets/images/Hotelroom3.jpg',
  'assets/images/Hotelroom4.jpg','assets/images/Hotelroom5.jpg'];
  var txt1=['Crown Plaza',''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
            CarouselSlider(
              items: List.generate(5, (index) {
                return SizedBox(
                  height: 220,
                  width: 250,
                  child: Card(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(pic[index]),
                          fit: BoxFit.fitWidth,
                        ),
                        Text('Crown Plazza'),
                        Text('A Five Star Hotel in Kochi'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Text('\$180 / night'),
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
              clipBehavior: Clip.none),
            ),
          ]))
        ],
      ),
    );
  }
}
