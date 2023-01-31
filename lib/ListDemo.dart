import 'package:flutter/material.dart';
import 'package:flutternew/loginpage.dart';

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'), backgroundColor: Colors.teal,),
      body: Center(
        child: ListView(
          children: [
            Card(color: Colors.white,
              child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'assets/images/hari.jpg')),
                  title: Text('Hari'),
                  subtitle: Text('9147474558'),
                  trailing: Wrap(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 10,)
                        ,
                        Icon(Icons.message),
                        SizedBox(width: 15),
                        Icon(Icons.arrow_forward_rounded)
                      ])
              ),
            ),
            Card(color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg'),
                ),
                title: Text('Amal'),
                subtitle: Text('9445266855'),
                trailing:Wrap(
                  children:[Icon(Icons.phone),SizedBox(width: 10),Icon(Icons.message),
                  SizedBox(width: 15),Icon(Icons.arrow_forward_rounded),])
              ),
            ),
            Card(color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(
                    'assets/images/dyana.jpg')),
                title: Text('Dyana'),
                subtitle: Text('989789556'),
                trailing: Wrap(
                    children:[
                    Icon(Icons.phone),SizedBox(width: 10),Icon(Icons.message),
                SizedBox(width: 15),Icon(Icons.arrow_forward_rounded)])
              ),
            ),
            Card(color: Colors.white,
              child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          '')),
                  title: Text('Jim'),
                  subtitle: Text('89854154558'),
                  trailing: Wrap(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 10,)
                        ,
                        Icon(Icons.message),
                        SizedBox(width: 15),
                        Icon(Icons.arrow_forward_rounded)
                      ])
              ),
            ),
          ],
        ),
      ),
    );
  }

}