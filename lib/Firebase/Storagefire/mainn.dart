import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutternew/onboardex.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: FireHome(),
  ));
}

class FireHome extends StatefulWidget {
  @override
  State<FireHome> createState() => _FireHomeState();
}

class _FireHomeState extends State<FireHome> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FireBase Storage'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(

              children: [

                ElevatedButton.icon(
                    onPressed: ()=>upload('camera'),
                    icon: Icon(Icons.camera_alt_outlined),
                    label: Text('Camera')),
                ElevatedButton.icon(
                    onPressed: ()=> upload("gallery"),
                    icon: Icon(Icons.photo),
                    label: Text('Gallery')),
              ],
            ),
            Expanded(child: FutureBuilder(
                future: loadData(),
                builder: (context,AsyncSnapshot<List<Map<String,dynamic>>> snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context,index){
                      final Map<String,dynamic> image = snapshot.data![index];
                      return Card(
                        child: ListTile(
                          leading: Image.network(image['url']),
                          title: Text(image['uploaded by']),
                          subtitle: Text(""),
                          trailing: IconButton(onPressed: ()=>delete(image['path']),
                              icon: Icon(Icons.delete)),
                        ),
                      );
                    });
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
            ))
          ],
        ),
      ),
    );
  }

  Future<List<Map<String,dynamic>>>loadData() async{
    List<Map<String,dynamic>> images=[];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfile = result.items;

    await Future.forEach(allfile, (sfile) async{
      final String fileUrl = await sfile.getDownloadURL();
      final FullMetadata fileMeta = await sfile.getMetadata();

      images.add({
        'url':fileUrl,
        'path':sfile.fullPath,
        'uploaded by':fileMeta.customMetadata?['uploaded by']?? 'Nobody'
      });
    });
    return images;
  }

 Future<void> upload(String imageinput) async{

    final picker = ImagePicker();
    XFile? pickedimage;
    try{
      pickedimage = await picker.pickImage(
          source: imageinput == 'camera'? ImageSource.camera: ImageSource.gallery);
      final String filename = path.basename(pickedimage!.path);
      File imagefile = File(pickedimage.path);
      try{
        //upload to firebase
        await storage.ref(filename).putFile(imagefile,SettableMetadata(
          customMetadata: {'uploaded by':" ",

          }
        ));
        //refresh UI
        setState(() {});
      }on FirebaseException catch (error){
        print(error);
      }
    }catch (err){
      print(err);
    }
 }

  Future<void>delete(String imagepath) async{
    await storage.ref(imagepath).delete();
    setState(() {

    });
  }
}
