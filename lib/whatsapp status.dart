import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Row(
                  children: [
                    Stack(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Color(0xff128C7E),
                          foregroundColor: Color(0xff128C7E),
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/hari.jpg'),
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: CircleAvatar(
                            radius: 10,
                            child: Icon(Icons.add, size: 20),
                          ),
                        ),
                      ],
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text('My Status'),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('Tap to add status update'),
                        ),
                      ),
                    ),
                  ],
                ),


                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text('Recent updates',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                        Row(
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage:
                                    AssetImage('assets/images/joseph.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Keeleri'),
                                    subtitle: Padding(
                                      padding: EdgeInsets.only(top: 2.0),
                                      child: Text('12 minutes ago'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                    Row(
                      children: [
                        Stack(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 30,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: AssetImage(''),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            children: const [
                              ListTile(
                                title: Text('Joseph'),
                                subtitle: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Text('7 minutes ago'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text('Viewed updates',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Row(
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage:
                                    AssetImage('assets/images/joseph.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text('Achu'),
                                    subtitle: Padding(
                                      padding: EdgeInsets.only(top: 2.0),
                                      child: Text('18 minutes ago'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Since the ExpansionTile has top and bottom borders by default and we don't want that so we
                        //use Theme to override its dividerColor property
                      ],
                    ),

                  ),
                ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white70,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.green,
          size: 30,
        ),
      ),
    );
  }
}
