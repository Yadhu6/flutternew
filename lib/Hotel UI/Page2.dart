import 'package:flutter/material.dart';
import 'Tourpack.dart';

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
        floating: true,
        pinned: true,
        centerTitle: false,
        title: Row(
          children: const [
            Icon(Icons.menu,color: Colors.black,),
            Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: Text('Go',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                ),
            ),
            Text('Fast',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black))
          ],
        ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/alejandro.jpg')
              ),
            )
          ],
          bottom: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search..',
                    prefixIcon: Icon(Icons.search_outlined)),
              ),
            ),
          ),
      ),
          SliverList(delegate: SliverChildListDelegate(
            [Container(child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,top: 10),
                  child: Text('Popular Places',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 220.0,top: 10),
                  child: Text('View All',style: TextStyle(color: Colors.black),),
                )
              ],
            )
          ),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,mainAxisSpacing: 3),
              children:
                tourpack.map((tours){
                  return Padding(padding: const EdgeInsets.all(5.0),
                  child: GridTile(child: InkWell(
                    onTap: ()=> goToSecond(context,tours['ID']),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage(tours['image']),
                                fit: BoxFit.cover)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(tours['name'],style: const TextStyle(color: Colors.red,
                            fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                        )
                      ],
                    ),
                  )
                  )
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: ElevatedButton(onPressed: (){}, child: const Text('Explore Now')),
              )
            ],
          ))
    ]));
  }

 void goToSecond(BuildContext context, productId) {
    Navigator.pushNamed(context, 'screen',arguments: productId);
 }



}