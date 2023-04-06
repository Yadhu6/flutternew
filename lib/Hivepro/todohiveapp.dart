import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(
    home: Todo_app(),
  ));
}

class Todo_app extends StatefulWidget {
  @override
  State<Todo_app> createState() => _Todo_appState();
}

class _Todo_appState extends State<Todo_app> {
  List<Map<String, dynamic>> tasks = [];

  final TextEditingController titles = TextEditingController();
  final TextEditingController descriptions = TextEditingController();
  int index = 0;

  //Hive class object

  final mytaskbox = Hive.box('todo_box');

  @override
  initState() {
    super.initState();
    fetchtask();
  }

  Future<void> createTask(Map<String, dynamic> newtask) async {
    await mytaskbox.add(newtask);
    fetchtask();
  }

  //read all data from hive
  void fetchtask() {
    final mytasks = mytaskbox.keys.map((key) {
      final value = mytaskbox.get(key);
      return {
        "id": key,
        "title": value['title'],
        "description": value['description']
      };
    }).toList();

    setState(() {
      tasks = mytasks.reversed
          .toList(); //reversed to sort in items in latest to oldest order
    });
  }

  //read singledata from hive used mainly in login app
  Map<String, dynamic> readData(int key) {
    final sdata = mytaskbox.get(key);
    return sdata;
  }

  Future<void> updateTask(int itemkey, Map<String, dynamic> updatetask) async {
    await mytaskbox.put(itemkey, updatetask);
    fetchtask();
  }

  Future<void> deleteTask(int itemkey) async {
    await mytaskbox.delete(itemkey);
    fetchtask();
  }

  void showTask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existing_task =
          tasks.firstWhere((element) => element['id'] == itemkey);
      titles.text = existing_task['title'];
      descriptions.text = existing_task['description'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 50,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: titles,
                  decoration: InputDecoration(hintText: "Title"),
                ),
                TextFormField(
                    controller: descriptions,
                    decoration: InputDecoration(hintText: "Description")),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (itemkey == null) {
                            createTask({
                              'title': titles.text.trim(),
                              'description': descriptions.text.trim()
                            });
                          }
                          if (itemkey != null) {
                            updateTask(itemkey, {
                              'title': titles.text,
                              'description': descriptions.text,
                            });
                          }
                          titles.text = "";
                          descriptions.text = "";
                          Navigator.of(context).pop();
                        },
                        child: Text(itemkey == null ? 'Create' : 'Update')),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo'),
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('ToDo '),
                  accountEmail: Text('Actions need to complete'),
                  currentAccountPicture:
                      Image(image: AssetImage('assets/images/alapuzha.jpg')),
                ),
                ListTile(
                  leading: Icon(Icons.search_outlined),
                  title: Text('Search'),
                ),
                ListTile(
                  leading: IconButton(
                      onPressed: () => showTask(context, null),
                      icon: Icon(Icons.add)),
                  title: Text('Add Task'),
                  //trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('User'),
                  //trailing: Icon(Icons.arrow_forward_rounded),
                  //onTap: ,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  //trailing: Icon(Icons.arrow_forward_rounded),
                )
              ],
            ),
          )),
      body: tasks.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (ctx, index) {
                final taskhive = tasks[index];
                return Card(
                  child: ListTile(
                    title: Text(taskhive['title']),
                    subtitle: Text(taskhive['description']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showTask(context, taskhive['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteTask(taskhive['id']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => showTask(context, null),
      //   child: Icon(Icons.add),
      // ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (taped_index) {
            setState(() {
              index = taped_index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () => showTask(context, null),
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                ),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_rounded,
                      color: Colors.red,
                    )),
            label: 'Delete')
          ]),
    );
  }
}
