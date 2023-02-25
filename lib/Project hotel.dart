import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HotelUI(),
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
        ),
  ));
}

class HotelUI extends StatefulWidget {
  @override
  State<HotelUI> createState() => _HotelUIState();
}

class _HotelUIState extends State<HotelUI> {
  // List Screen=[
  //   Center(child: Text('Home')),
  //   Center(child: Text('Search')),
  //   Center(child: Text('Payment')),
  //
  // ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.teal,
            currentIndex: index,
        onTap: (taped_index) {
          setState(() {
            index = taped_index;
          });
        },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,),label: 'Home',backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30,),label: 'Search',backgroundColor: Colors.blue),
              BottomNavigationBarItem(icon: Icon(Icons.payment,size: 30,),label: 'Payment',backgroundColor: Colors.greenAccent),
               ]),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    Stack(children: [
                      Container(
                        height: 400,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ciudad-maderas-MXbM1NrRqtI-unsplash.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      const Positioned(
                        left: 20,
                        top: 250,
                        child: Text(
                          'Crowne Plaza \nKochi,Kerala',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        top: 320,
                        left: 20,
                        child: Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                            color: Colors.grey,
                            borderRadius: const BorderRadius.all(
                                Radius.circular(50)),
                          ),
                          child: const Center(
                            child: Text(
                              '8.4/85 reviews',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 310,
                          left: 300,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                Color(0xFFd50000);
                              });
                            },
                            icon: const Icon(

                              LineAwesome.heart,
                              size: 30,
                            ),
                            color: Colors.white,
                          ))
                    ])
                  ])),
              SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Stack(
                          children: [
                            Container(
                                child: Column(children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.pink,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.pink,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.pink,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.pink,
                                      ),
                                      Icon(
                                          Icons.star_border_purple500_outlined),
                                    ],
                                  ),
                                  Positioned(
                                    top: 20,
                                    child: Row(
                                      children: const [
                                        Icon(Icons.location_pin),
                                        Text('8 km to LuluMall')
                                      ],
                                    ),
                                  ),
                                ])),
                            Positioned(
                              left: 300,
                              child: Column(
                                children: const [
                                  Text(
                                    '\$200',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('/per night')
                                ],
                              ),
                            ),
                          ]),
                    )
                  ])),
              SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.pink),
                              color: Colors.pink,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(50)),
                            ),
                            child: const Center(
                              child: Text('Book Now',
                                style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10),
                            child: Text('Crowne Plaza', style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),)),

                        Padding(padding: EdgeInsets.only(top: 5),
                          child: Container(
                            width: 370,
                            child: const Text(
                              'Crowne Plaza is a British multinational chain of full service, upscale hotels headquartered in the United Kingdom.'
                                  ' It caters to business travelers and the meetings and conventions market. '
                                  'It forms part of the InterContinental Hotels Group family of brands, which include InterContinental Hotels & Resorts and Holiday Inn Hotels & Resorts,'
                                  ' and operates in nearly 100 countries with more than 431 hotels and 118,000 bedrooms, '
                                  'usually located in city centers, resorts, coastal towns or near major airports.'
                                  'Crowne Plaza Hotels & Resorts is the title sponsor of the Crowne Plaza Invitational at Colonial - a PGA Tour golf tournament held annually in Fort Worth, Texas.'
                                  ' Starting in 2012, they are also officially sponsoring PGA Tour 2010s Rookie of the Year, Rickie Fowler.'
                              'Crowne Plaza Hotels & Resorts have been the sponsor of the British FIA World Touring Car Championship driver Andy Priaulx,'
                                  ' a multiple touring car champion, since 2006. They now continue to support him in the Deutsche Tourenwagen Masters (DTM),'
                                  'a popular European touring car championship, as an official sponsor of BMW Motorsport along with the American LeMans Series (ALMS) where Californian Joey Hand represents the brand for both series',
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.black),),
                          ),)
                      ],
                    )
                  ]
                  ))
            ],
          ),
        ));
  }
}
