import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  var image = [
    'https://unsplash.com/photos/jRjHSce08Os',
    'assets/images/dyana.jpg',
    'assets/images/joseph.jpg',
    'assets/images/pedro.jpg',
    'assets/images/victor.jpg',
    'https://unsplash.com/photos/MBRrXdf8iSQ',
    'https://unsplash.com/photos/haVSZsK7hB0',
    'https://unsplash.com/photos/4pxzuQOOGVU',
    'https://unsplash.com/photos/FHTTNcwjMEw',
    'https://unsplash.com/photos/DBTaJldhxjY'
  ];
  var icon = [
    Icons.photo,
    Icons.done_outlined,
    Icons.done_all,
    Icons.done_outlined,
    Icons.done_all,
    Icons.done_outlined,
    Icons.done_all,
    Icons.done_outlined,
    Icons.done_all,
    Icons.done_outlined
  ];
  var titl = [
    'Tesla',
    'Abhinav',
    'Ebin',
    'Akhil',
    'Adarsh',
    'Yadhu',
    'Rahul',
    'Hari',
    'Shah',
    'Dev'
  ];
  var subt = [
    'Dear Customer, New off....',
    'Welcome Home',
    'Hello',
    'Hi',
    'Hello',
    'Hi',
    'Not possible..',
    'Hi',
    'Hello',
    'Hi,'
  ];
  var time = [
    '05:30pm',
    '04:12pm',
    '03:20pm',
    '02:30pm',
    '02:12pm',
    'Yesterday',
    'Yesterday',
    '12/02/23',
    '12/02/23',
    '10/02/23'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: titl.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius:30 ,
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(
                titl[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [Icon(icon[index]), Text(subt[index])],
              ),
              trailing: Text(time[index]),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white70,
        onPressed: () {},
        child: const Icon(
          Icons.message_rounded,
          color: Colors.green,
          size: 30,
        ),
      ),
    );
  }
}
