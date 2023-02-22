import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sliverr(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ),);

}

class Sliverr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           floating: true,
           pinned: true,
           title: Text('Sliver Appbar'),
           actions: [
             IconButton(onPressed: (){}, 
                 icon: Icon(Icons.add_a_photo_sharp))
           ],
           bottom: AppBar(
             title: Container(
               width: double.infinity,
               color: Colors.white,
               height: 50,
               child: const TextField(
                 decoration: InputDecoration(
                   hintText: 'Search',
                   prefixIcon: Icon(Icons.search_outlined),
                   suffixIcon: Icon(Icons.account_circle),
                   focusColor: Colors.green,
                 ),
               ),
             ),
           ),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context,index) {
           return Container(
             height: 400,
             child: Column(
               children: [
                 Image(image: AssetImage('assets/images/baloon.jpg'),height: 150,),
                 Text("Hello $index",style: TextStyle(fontSize: 25),),
                 Image(image: AssetImage('assets/images/dyana.jpg'),height: 150,)
               ],
             )
           );
         },childCount: 8,
         ),
         )
       ],
     ),
   );
  }
  
}