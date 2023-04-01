
import 'package:hive/hive.dart';
part 'usermodelclass.g.dart';
@HiveType(typeId: 1)
class User{

  @HiveField(0)
  final String mail;

  @HiveField(1)
  final String pass;

  @HiveField(2)
  String? id;

  User({required this.mail,required this.pass}){
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}