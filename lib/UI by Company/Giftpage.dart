import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Giftpage extends StatefulWidget {
  @override
  State<Giftpage> createState() => _GiftpageState();
}

class _GiftpageState extends State<Giftpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Rewards Wallet'),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 30,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue[900]),
                    height: 80,
                    width: 190,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            const Text(
                              'Total Balance',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: const [
                                  Text(
                                    '14,325',
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.currency_bitcoin,
                                    color: Colors.yellowAccent,
                                    size: 35,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 250,
                    child: Image(
                      image: AssetImage('assets/images/gift.jpg'),
                    )),
                Positioned(
                  top: 140,
                  left: 30,
                  child: SizedBox(
                    height: 80,
                    width: 200,
                    child: Card(
                      color: Colors.grey[300],
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('Redeemable \n Points'),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '12,000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                          fontSize: 18),
                                    ),
                                    Icon(
                                      BoxIcons.bx_coin,
                                      color: Colors.yellow[800],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: VerticalDivider(
                              color: Colors.purple[300],
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              children: [
                                Text('Expected \n Points'),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '7508',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            fontSize: 18),
                                      ),
                                      Icon(
                                        BoxIcons.bx_coin,
                                        color: Colors.yellow[800],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFFBA68C8),
              Color(0xFFF06292),
              Colors.blueGrey
            ])),
            child: ContainedTabBarView(
              tabs: [
                Row(
                  children: [
                    SizedBox(width: 80),
                    Icon(Icons.wallet_giftcard,
                        color: Color.fromARGB(255, 7, 87, 153)),
                    Text('Rewards', style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 80),
                    Icon(Icons.account_balance_wallet_outlined,
                        color: Color.fromARGB(255, 7, 87, 153)),
                    Text('Transactions', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
              views: [
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      ButtonsTabBar(
                        tabs: [
                          Tab(
                            text: "  All ",
                          ),
                          Tab(
                            text: " Direct Rewards ",
                          ),
                          Tab(
                            text: " Indirect Rewards  ",
                          ),
                        ],
                      ),
                Expanded(child: TabBarView(
                  children: <Widget>[
                    Text('Welcome'),
                    Text('Welcome'),
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
                )
                ])),
                 DefaultTabController(length: 3, child: Text('10'))
              ],
              onChange: (index) => print(index),
            ),
          )
        ],
      ),
    );
  }
}
