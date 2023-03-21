import 'package:flutter/material.dart';
import 'package:flutternew/UI%20by%20Company/Main%20Page.dart';

import 'Navi page.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFFFF176), Color(0xFFF06292), Colors.grey])),
child: Padding(
  padding: const EdgeInsets.only(top: 120.0,left: 20),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Select invoice date',style: TextStyle(color: Colors.blue,fontSize: 20),),
      Padding(
        padding: const EdgeInsets.only(right: 20.0,top: 20),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            decoration: InputDecoration(hintText: 'Eg: December 12,2022 ',
            suffixIcon: Icon(Icons.calendar_month),),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text('Enter the amount',style: TextStyle(color: Colors.blue,fontSize: 20),),
      ),
    Padding(
    padding: const EdgeInsets.only(right: 20.0,top: 20),
    child: Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10)),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Eg:2000'
      ),
    ),)),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 420.0,left: 20),
            child: SizedBox(
              height:35,
              width: 120,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UICompany()));
              }, child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text('Back',style: TextStyle(fontSize: 20),),
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 420.0,left: 80),
            child: SizedBox(
              height:35,
              width: 120,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigate()));
              }, child: Row(
                children: [
                  Text('Submit',style: TextStyle(fontSize: 20),),
                  Icon(Icons.beenhere_rounded),
                ],
              )),
            ),
          ),
        ],
      )
    ],
  ),
),
      ),
    );
  }
}
