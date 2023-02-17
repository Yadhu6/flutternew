import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  var image = [
    'assets/images/adrian.jpg',
    'assets/images/apple.webp',
    'assets/images/alejandro.jpg'
  ];
  var image1 = [
    'assets/images/dyana.jpg',
    'assets/images/joseph.jpg',
    'assets/images/victor.jpg'
  ];
  var text1 = ['Ammu', 'Yadhu', 'Achan'];
  var text2 = ['12 minutes ago', '15 minutes ago', '20 minutes ago'];
  var text3 = ['Alwin', 'Adarsh', 'Christopher'];
  var text4 = ['17 minutes ago', '25 minutes ago', '30 minutes ago'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        //padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
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
              SizedBox(
                height: 250,
                child: ListView.custom(
                  childrenDelegate: SliverChildListDelegate(
                    List.generate(image.length, (index) {
                      return Row(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 30,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(image[index]),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(text1[index]),
                                  subtitle: Padding(
                                    padding: EdgeInsets.only(top: 2.0),
                                    child: Text(text2[index]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text('Viewed updates',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 400,
                child: ListView.custom(
                  childrenDelegate: SliverChildListDelegate(
                    List.generate(
                      image1.length,
                      (index) {
                        return Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 30,
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage: AssetImage(image1[index]),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(text3[index]),
                                    subtitle: Padding(
                                      padding: EdgeInsets.only(top: 2.0),
                                      child: Text(text4[index]),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                        // Since the ExpansionTile has top and bottom borders by default and we don't want that so we
                        //use Theme to override its dividerColor property
                      },
                    ),
                  ),
                ),
              )
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
