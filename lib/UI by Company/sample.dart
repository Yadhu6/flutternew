import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class Uploader extends StatefulWidget {
  @override
  State<Uploader> createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: Color.fromARGB(255, 218, 209, 209),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios,
                            color: Color.fromARGB(255, 7, 87, 153))),
                    Text('Rewards Wallet',
                        style:
                        TextStyle(color: Color.fromARGB(255, 7, 87, 153)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text('Total Balance',
                                    style: TextStyle(color: Colors.white)),
                                Row(
                                  children: [
                                    SizedBox(width: 40),
                                    Text('14,325',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35)),
                                    Image(
                                        width: 20,
                                        image: AssetImage(
                                            'assets/images/coin.png'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 7, 87, 153),
                              borderRadius: BorderRadius.circular(20)),
                          height: 80,
                          width: 220,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    Text('Affordable\npoints'),
                                    Row(
                                      children: [
                                        Text('12,000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 7, 87, 153),
                                                fontSize: 15)),
                                        Image(
                                            width: 20,
                                            image: AssetImage(
                                                'assets/images/coin.png'))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                VerticalDivider(indent: 10, endIndent: 15),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text('credited\npoints'),
                                    Row(
                                      children: [
                                        Text('7508',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 7, 87, 153),
                                                fontSize: 15)),
                                        Image(
                                            width: 20,
                                            image: AssetImage(
                                                'assets/images/coin.png'))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(width: .2),
                              color: Color.fromARGB(255, 218, 209, 209),
                              borderRadius: BorderRadius.circular(20)),
                          height: 80,
                          width: 220,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: 170,
                        width: 220,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://plus.unsplash.com/premium_photo-1670462145713-b79606affb0b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGdpZnRib3h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'))
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Color.fromARGB(255, 218, 209, 209),
          padding: const EdgeInsets.all(8.0),
          width: 500,
          height: 320,
          child: ContainedTabBarView(
            tabs: [
              Row(
                children: [
                  SizedBox(width: 80),
                  Icon(Icons.wallet_giftcard,
                      color: Color.fromARGB(255, 7, 87, 153)),
                  Text('Rewards',
                      style: TextStyle(color: Color.fromARGB(255, 7, 87, 153))),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 80),
                  Icon(Icons.account_balance_wallet_outlined,
                      color: Color.fromARGB(255, 7, 87, 153)),
                  Text('Transactions',
                      style: TextStyle(color: Color.fromARGB(255, 7, 87, 153))),
                ],
              ),
            ],
            views: [
              DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ButtonsTabBar(
                        backgroundColor: Color.fromARGB(255, 218, 209, 209),
                        labelStyle:
                        TextStyle(color: Color.fromARGB(255, 7, 87, 153)),
                        unselectedBackgroundColor:
                        Color.fromARGB(255, 218, 209, 209),
                        splashColor: Colors.yellow,
                        borderWidth: 1,
                        borderColor: Colors.blue,
                        tabs: [
                          Tab(
                            text: "         All        ",
                          ),
                          Tab(
                            text: "          Direct Rewards          ",
                          ),
                          Tab(
                            text: "             Indirect Rewards           ",
                          ),
                        ]),
                    Expanded(
                      child: TabBarView(children: <Widget>[
                        Center(
                          child: Icon(Icons.directions_car),
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
                        ),
                        ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                      leading: Text(
                                        '26',
                                        style: TextStyle(
                                            color:
                                            Color.fromARGB(255, 7, 87, 153),
                                            fontSize: 25),
                                      ),
                                      title: Text(
                                        'Order ID - 874834876860',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Text('Valid Till'),
                                          Text('Dec 31,2022'),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                      leading: Text(
                                        '02',
                                        style: TextStyle(
                                            color:
                                            Color.fromARGB(255, 7, 87, 153),
                                            fontSize: 25),
                                      ),
                                      title: Text(
                                        'Order ID - 878454876860',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Text('Valid Till'),
                                          Text('Jan 30,2021'),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                      leading: Text(
                                        '31',
                                        style: TextStyle(
                                            color:
                                            Color.fromARGB(255, 7, 87, 153),
                                            fontSize: 25),
                                      ),
                                      title: Text(
                                        'Order ID - 874834812460',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Text('Valid Till'),
                                          Text('Jul 22,2020'),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                      leading: Text(
                                        '52',
                                        style: TextStyle(
                                            color:
                                            Color.fromARGB(255, 7, 87, 153),
                                            fontSize: 25),
                                      ),
                                      title: Text(
                                        'Order ID - 940834876860',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Text('Valid Till'),
                                          Text('Jun 11,2019'),
                                        ],
                                      ))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                      leading: Text(
                                        '14',
                                        style: TextStyle(
                                            color:
                                            Color.fromARGB(255, 7, 87, 153),
                                            fontSize: 25),
                                      ),
                                      title: Text(
                                        'Order ID - 874800676860',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      trailing: Column(
                                        children: [
                                          Text('Valid Till'),
                                          Text('Dec 20,2023'),
                                        ],
                                      ))),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(backgroundColor: Colors.green, tabs: [
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: "carggf",
                      ),
                      Tab(
                        icon: Icon(Icons.directions_transit),
                        text: "transaction",
                      ),
                    ]),
                    Expanded(
                      child: TabBarView(children: <Widget>[
                        Center(
                          child: Icon(Icons.directions_car),
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
            onChange: (index) => print(index),
          ),
        ),
      ]),
    );
  }
}