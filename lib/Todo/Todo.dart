import 'package:flutter/material.dart';
import 'package:flutternew/Todo/SQLHelper.dart';

class Note extends StatefulWidget {
  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {

  List<Map<String,dynamic>>data_from_db=[];
  void getData()async{
    final data= await SQLHelper.readData();
    setState(() {
      data_from_db = data;
      isLoading = false;
    });
  }
  @override
  void initState(){
    super.initState();
    getData();
  }
  var isLoading = true;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

    Future<void> createItem() async {
      await SQLHelper.addTask(titleController.text, descriptionController.text);
      getData();
    }

    void showForm(int? id) async {

      if(id!= null){
        final existing_task = data_from_db.firstWhere((element) => element['id'] == id);
        titleController.text=existing_task['title'];
        descriptionController.text=existing_task['description'];
      } // fetching data from particular id for updation
      showModalBottomSheet(
          context: context,
          elevation: 5,
          isScrollControlled: true,
          builder: (_) =>
              Container(
                padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom + 110),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: 'title'),
                    ),
                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(hintText: 'description'),
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          if (id == null) {
                            await createItem();
                          }
                          if (id != null) {
                            await updateItem(id);
                          }
                          titleController.text = "";
                          descriptionController.text = "";
                          Navigator.pop(context);
                        },
                        child: Text(id == null ? 'Create' : 'Update'))
                  ],
                ),
              ));
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => showForm(null),
          child: Icon(Icons.add),
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator()): ListView.builder(
            itemCount: data_from_db.length,
            itemBuilder: (ctx,index){
              return Card(
                color: Colors.orange,
                child: ListTile(
                  title: Text(data_from_db[index]['title']),
                  subtitle: Text(data_from_db[index]['description']),
                  trailing: Wrap(
                    children: [
                      IconButton(onPressed: () => showForm(data_from_db[index]["id"]), icon: Icon(Icons.edit)),
                      IconButton(onPressed: () => deleteTask(data_from_db[index]["id"]), icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
    }));
  }

  void deleteTask(int id)async {
      await SQLHelper.deleteTask(id);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Deleted'),));
      getData();
  }

 Future<void> updateItem(int id)async {
      await SQLHelper.updateTask(id,titleController.text,descriptionController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Updated'),));
      getData(); // for refresh UI
 }
}
