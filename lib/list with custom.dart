import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListCustom(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class ListCustom extends StatelessWidget {
  var prod=<String>['Apple','Mango',
    'Banana ','Grapes ','Orange ','Peach ','Guava', 'Lemon ','Kiwi', 'WaterMelon',];
  var unit=['KG','KG','KG','KG','KG','KG','KG','KG','KG','KG',];
  var fruitimage=<String>['assets/images/apple.webp','assets/images/mango.jpg','assets/images/banana.jpg',
    'assets/images/grape.avif','assets/images/orange.jpg','assets/images/peach.jpg','assets/images/guava.webp',
    'assets/images/lemon.jpg','assets/images/kiwi.webp','assets/images/Watermelon.webp',];
  var price=[20,30,15,25,50,17,22,55,16,30];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product list'),
        leading: const Icon(Icons.format_line_spacing_rounded),
        actions: const [
          Icon(Icons.shopping_cart_outlined)
        ],
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(List.generate(10,(index){
       return SizedBox(
         height: 100,
         width: 30,
         child: Card( color: Colors.grey,
           child:
           ListTile(
             //isThreeLine: true,
             leading: CircleAvatar(
               backgroundImage:NetworkImage(fruitimage[index]) ,
             ),
             //title:Text(prop[index],textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold),),
             subtitle: RichText(
               text: TextSpan(text: "Name :", children: [
                 TextSpan(text: prod[index],style: const TextStyle(fontWeight: FontWeight.bold)
             ),
               TextSpan(text:
               '\nUnit :',children: [
              TextSpan(text: unit[index],style: TextStyle(fontWeight: FontWeight.bold)),
                 TextSpan(text:
                 '\nPrice',children: [TextSpan(
                   text:'\$ ${price[index]}',style: TextStyle(fontWeight: FontWeight.bold)),
                 ]),
               ])
               ])
             ),

             trailing: ElevatedButton(onPressed: (){}, child: Text('Add to Cart'),
             style: ElevatedButton.styleFrom(backgroundColor: Colors.black),),
           ),

         ),
       );
      }
      //     childrenDelegate: SliverChildListDelegate(List.generate(100, (index) {
      //   return Card(
      //     color: Colors.deepOrangeAccent,
      //     child: Text('Hello'),
      //   );
      // })),

      ),
      ),
      ));
  }
}
