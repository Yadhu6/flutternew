import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget{
  var image=['assets/images/hari.jpg','assets/images/dyana.jpg','assets/images/joseph.jpg',
  'assets/images/pedro.jpg','assets/images/victor.jpg','https://unsplash.com/photos/MBRrXdf8iSQ',
  'https://unsplash.com/photos/haVSZsK7hB0','https://unsplash.com/photos/4pxzuQOOGVU',
  'https://unsplash.com/photos/FHTTNcwjMEw','https://unsplash.com/photos/DBTaJldhxjY'];
  var icon=[Icons.done_all,Icons.done_outlined,Icons.done_all,Icons.done_outlined
  ,Icons.done_all,Icons.done_outlined,Icons.done_all,Icons.done_outlined,
    Icons.done_all,Icons.done_outlined];
  var titl=['Novin','Abhinav','Ebin','Akhil','Adarsh','Yadhu','Rahul','Hari',
  'Shah','Dev'];
  var subt=['Hello','Hi','Hello','Hi','Hello','Hi','Hello','Hi','Hello','Hi,'];
  var time=['02:30pm','03:12pm','04:20am','02:30pm','03:12pm','04:20am',
    '02:30pm','03:12pm','04:20am','08:24am'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: titl.length,
        itemBuilder: (context,index) {
        return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
                title: Text(titl[index],style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Row(
                  children: [
                    Icon(icon[index]),
                    Text(subt[index])
                  ],
                ),
                trailing: Text(time[index]),
              );

        } ),
    );
  }
  
}
