import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper {
  //create table fortodo
  static Future<void> createTables(sql.Database db) async {
    await db.execute("""CREATE TABLE todo(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       title TEXT,
       description TEXT
      )""");
  }
  //create database

  static Future<sql.Database> db() async{
    return sql.openDatabase(
        'mytodo.db',
        version: 1,
        onCreate: (sql.Database database,int version) async {
          await createTables(database);
        }
    );
  }
  static addTask(String title, String description) async{
    final db = await SQLHelper.db();
    final data = {'title':title,'description':description};
    final id = await db.insert('todo', data);
    return id;
  }
}