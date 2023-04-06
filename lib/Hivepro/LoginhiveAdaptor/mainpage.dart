import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';
import 'Modelclass/usermodelclass.dart';
import 'Screens/Loginn.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<User>('user');
  Hive.registerAdapter(UserAdapter());
  runApp(GetMaterialApp(
    home: Loginhive(),
  ));
}
