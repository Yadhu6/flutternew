import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Drawerr(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ),);
}

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Drawer'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.orange),
        child: Drawer(
          child: ListView(
            children:  const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFEDFE52),
                ),
                accountName: Text('Christiano Ronaldo',style: TextStyle(color: Colors.red),),
                accountEmail:Text('Football player',style: TextStyle(color: Colors.red),),
              currentAccountPicture:CircleAvatar(backgroundImage: AssetImage('assets/images/CristianoRonaldo.jpg'),
              ),
                // otherAccountsPictures: [CircleAvatar(backgroundImage: AssetImage('assets/images/CristianoRonaldo.jpg'),
                // ),
                //   CircleAvatar(backgroundImage: AssetImage('assets/images/CristianoRonaldo.jpg'),
                //   ),
                //
                // ],
              ),

              ListTile(
                leading: Icon(Icons.camera_alt_outlined),
                title: Text('Camera'),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
              ListTile(
                leading: Icon(Icons.search_outlined),
                title: Text('Search'),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Inbox'),
                trailing: Icon(Icons.arrow_forward_rounded),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('User'),
                trailing: Icon(Icons.arrow_forward_rounded),
                //onTap: ,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward_rounded),
              )
            ],

          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Card(
                child: Image(image: NetworkImage('assets/images/CristianoRonaldo.jpg'),
                ),
              ),
              Text('Christiano Ronaldo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              Card(
                child: Text('Cristiano Ronaldo dos Santos Aveiro, born 5 February 1985, is a Portuguese professional footballer who plays as a forward for and captains both Saudi Professional League club Al Nassr and the Portugal national team. Widely regarded as one of the greatest players of all time, Ronaldo has won five Ballon dOr awards[note 3] and four European Golden Shoes, the most by a European player. He has won 34 trophies in his career, including seven league titles, five UEFA Champions Leagues, the UEFA European Championship and the UEFA Nations League. Ronaldo holds the records for most appearances (183), goals (140), and assists (42) in the Champions League, goals in the European Championship (14), international goals (118), and joint-most international appearances (196). '
                    'He is one of the few players to have made over 1,100 professional career appearances, and has scored over 820 official senior career goals for club and country.'
                    'Ronaldo made his international debut for Portugal in 2003 at the age of 18 and has since earned over 190 caps, making him Portugals most-capped player. With more than 100 goals at international level, he is also the all-time top goalscorer. Ronaldo has played in and scored at 11 major tournaments; he scored his first international goal at Euro 2004, where he helped Portugal reach the final. '
                    'He assumed captaincy of the national team in July 2008. In 2015, Ronaldo was named the best Portuguese player of all time by the Portuguese Football Federation. The following year, he led Portugal to their first major tournament title at Euro 2016, and received the Silver Boot as the second-highest goalscorer of the tournament.'
                    'This achievement would see him receive his fourth Ballon dOr. He also led them to a third-place finish at the 2017 FIFA Confederations Cup, to victory in the inaugural UEFA Nations League in 2019, receiving the top scorer award in the finals,'
                    'and later received the Golden Boot as top scorer of Euro 2020.',textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black),),
              )
            ],
          ),
        ),
      ),
    );
  }
}