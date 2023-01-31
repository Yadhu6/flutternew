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
                          'data:image/jpeg;base64,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')),
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
                    'data:image/jpeg;base64,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')),
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