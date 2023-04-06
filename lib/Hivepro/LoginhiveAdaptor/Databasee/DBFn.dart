import 'package:hive/hive.dart';

import '../Modelclass/usermodelclass.dart';

class Databasee{

  Databasee._internal();

  static Databasee instance = Databasee._internal();

  factory Databasee(){
    return instance;
  }
  Future<void> userSignup(User user) async {
    final db = await Hive.openBox<User>('user');
    db.put(user.id, user);
  }
// get all the registered users
  Future<List<User>>getUser() async{
    final db = await Hive.openBox<User>('user');
    return db.values.toList();
  }
}