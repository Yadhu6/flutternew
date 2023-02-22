import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FarmerSliver(),
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

class FarmerSliver extends StatelessWidget {
  var item=['Fruits','Vegetables','Exotic','Fresh Cuts','Nutrition Chargers'
    ,'Packed Flavours'];
  var ima = ['assets/images/lemon.jpg','assets/images/veg.jpg','assets/images/Watermelon.webp',
    'assets/images/drypacked.jpg','assets/images/nutrition.png','assets/images/freshcut.jpg'
     ];
  int inde=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SnakeNavigationBar.color(
          selectedItemColor: Colors.teal,
          snakeViewColor: Colors.red,
          snakeShape: SnakeShape.indicator,
          currentIndex: inde,
          onTap: (taped_index){

          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,size: 20,),label: 'Home',backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30,),label: 'Search',backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.add,size: 30,),label: 'New',backgroundColor: Colors.greenAccent),

          ]),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              centerTitle: false,
              title: const Text(
                'FARMERS FRESH ZONE',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: const [
                      Icon(Icons.location_pin),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text("Kochi"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
              ],
              bottom: AppBar(
                title: Container(
                  height: 30,
                  width: double.infinity,
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Search here...',
                        prefixIcon: Icon(Icons.search_outlined)),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return SizedBox(
                  height: 50,
                  //width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8),
                        child: Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Text(
                            'VEGETABLES',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 9),
                        child: Container(
                          height: 23,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Text(
                            'FRUITS',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 9),
                        child: Container(
                          height: 23,
                          width: 70,
                          child: const Text(
                            'EXOTIC',
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 9),
                        child: Container(
                          height: 23,
                          width: 100,
                          child: const Text(
                            'FRESH CUTS',
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.green),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      )
                    ],
                  ));
            }, childCount: 1)),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return CarouselSlider(
                  options: CarouselOptions(height: 200.0,
                      autoPlay: true,autoPlayInterval: Duration(seconds: 2)),
                  items: ['assets/images/orange.jpg','assets/images/nutrition.png',
                  'assets/images/vegoffer.jpg','assets/images/freshcut.jpg'].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(image:AssetImage(i) )
                            ),

                        );
                      },
                    );
                  }).toList(),
                );
              }, childCount: 1),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.green),
                    ),
                    //width: 300,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 3),
                          child: Center(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.timer,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    '30 MINS POLICY',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 3),
                          child: Center(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.man,
                                  color: Colors.deepOrange,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    'LOCAL SOURCING',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 3),
                          child: Center(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.mobile_friendly_sharp,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Text(
                                    'TRACEABILITY',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }, childCount: 1),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  'Shop By Category',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Column(
                children: [
                  Container(
                      child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 2),
                          itemCount: ima.length,
                          itemBuilder: (context, index) {
                            return Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                            height: 300,
                            width:double.infinity,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6), //border corner radius
                            boxShadow:[
                            BoxShadow(
                            color: Colors.grey.withOpacity(0.2), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: const Offset(0, 2), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                            ],
                            ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(ima[index]),
                                      fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Center(child: Text(item[index],style:
                                    const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),)),
                                  )
                                ],
                              )
                            );
                          }),
                  ),
                ],
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
