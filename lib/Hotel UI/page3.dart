import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tourpack.dart';

class places extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final product = tourpack.firstWhere((element) => element['ID'] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Most beautiful Place'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Most beautiful \nnatural place',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:AssetImage(product['image'])),
                )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellowAccent,),
                Icon(Icons.star,color: Colors.yellowAccent,),
                Icon(Icons.star,color: Colors.yellowAccent,),
                Icon(Icons.star,color: Colors.yellowAccent,),
                Icon(Icons.star_border,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('4 rating',style: TextStyle(fontSize: 15),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0,right: 230),
              child: Text('About Place',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(product['description'],style: TextStyle(color: Colors.black),textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 10,right: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                  child: Image(image: AssetImage(product['image']))),
            )
          ],
        ),

      ),
    );
  }

}