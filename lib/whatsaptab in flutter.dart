import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/whatsap%20chat%20page.dart';
import 'package:flutternew/whatsapp%20call%20page.dart';
import 'package:flutternew/whatsapp%20status.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabflutter(),
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Color(0xFF2E7D32))),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}

class Tabflutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search_outlined),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text('New group')),
                PopupMenuItem(child: Text('New broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Starred messages')),
                PopupMenuItem(child: Text('Settings')),
                PopupMenuItem(child: Text('Settings')),
              ];
            })
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.1,
              child: Tab(
                icon: Icon(Icons.group_add),
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width*.3,
                child: Tab(text: 'Chats')),
            SizedBox(
              width: MediaQuery.of(context).size.width*.3,
              child: Tab(
                text: 'Status',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*.3,
              child: Tab(
                icon: Icon(Icons.phone_locked),
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Community'),),
            Chatpage(),
            Status(),
            Callpage(),
          ],
        ),

      ),
    );
  }
}
