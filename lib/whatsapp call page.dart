import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Callpage extends StatelessWidget {
  var image = [
  'assets/images/dyana.jpg',
  'assets/images/joseph.jpg',
  'assets/images/pedro.jpg',
  'assets/images/victor.jpg',
  'https://unsplash.com/photos/MBRrXdf8iSQ'];
  var ico=[Icons.call_missed_outgoing,Icons.call_made,Icons.call_received_outlined,
    Icons.call_missed_outgoing,Icons.call_made];
  var titl = [
  'Tesla',
  'Abhinav',
  'Ebin',
  'Akhil',
  'Yadhu'];
  var ico1=[Icons.videocam,Icons.videocam,Icons.phone,
    Icons.phone,Icons.videocam];
  var time = [
    '12 February, 7:33pm','7 February, 11:03am','27 January, 06:22pm',
    '27 January, 04:42pm','17 January, 11:42am'
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
       itemCount: titl.length,
       itemBuilder: (context, index)
   {
     return ListTile(
       leading: CircleAvatar(
         radius: 30,
         backgroundImage: AssetImage(image[index]),
       ),
       title: Text(
         titl[index],
         style: TextStyle(fontWeight: FontWeight.bold),
       ),
       subtitle: Row(
         children: [Icon(ico[index]), Text(time[index])],
       ),
       trailing: Icon(ico1[index],color: Colors.green,),
     );
   }),
     floatingActionButton: FloatingActionButton(
     backgroundColor: Colors.white70,
     onPressed: () {},
     child: const Icon(
       Icons.add_ic_call_outlined,
       color: Colors.green,
       size: 30,
     ),
   ),
   );
}}