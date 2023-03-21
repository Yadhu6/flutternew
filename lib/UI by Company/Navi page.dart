import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutternew/UI%20by%20Company/sample.dart';
import 'Giftpage.dart';
import 'Profile.dart';

class Navigate extends StatefulWidget{
  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  List Screen=[
    Center(child: Text('Search')),
    Center(child: Uploader()),
    Center(child: Giftpage()),
    Center(child: Profile()),
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold( bottomNavigationBar: SnakeNavigationBar.color(
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,),backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.menu_rounded,size: 30,),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_outlined,size: 30,),backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(icon: Icon(Icons.perm_contact_calendar_rounded,size: 30,),backgroundColor: Colors.indigoAccent),
          // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_sharp),label: 'Home'),
        ]),
    body: Screen[index],);
  }
}