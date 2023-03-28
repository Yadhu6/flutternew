import 'package:flutter/material.dart';
import 'package:flutternew/Todo/SQLHelper.dart';

class Note extends StatefulWidget {
  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future<void> createItem() async {
      await SQLHelper.addTask(titleController.text,descriptionController.text);
    }
    void showForm(int? id) async {
      showModalBottomSheet(context: context,
          elevation: 5,
          isScrollControlled: true,
          builder: (_)=>Container(
        padding: EdgeInsets.only(top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom+110),
     child: Column(
       mainAxisSize: MainAxisSize.min,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: [
         TextFormField(
           controller: titleController,
           decoration: InputDecoration(
             hintText: 'title'
           ),
         ),
         TextFormField(
           controller: descriptionController,
           decoration: InputDecoration(
             hintText: 'description'
           ),
         ),
         ElevatedButton(onPressed: ()async{
           if(id == null){
             await createItem();
           }
           if(id != null){
             //await updateItem(id);

           }
           titleController.text="";
           descriptionController.text="";
           Navigator.pop(context);
         }, child: Text(id == null ?'Create' : 'Update'))
       ],
     ),
      ));

    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=> showForm(null),
      child: Icon(Icons.add),),

    );
  }
}

