import 'package:flutter/cupertino.dart';
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
// read all data from db u can use rawQuery() function too
  static Future<List<Map<String,dynamic>>>readData() async{
    final db = await SQLHelper.db();
    return db.query('todo',orderBy: "id");
  }
  //to read single data by id
static Future<List<Map<String,dynamic>>> readSingleData(int id)async{
    final db = await SQLHelper.db();
    return db.query('todo',where: "id = ?",whereArgs: [id],limit: 1);
}

  static Future<void> deleteTask(int id) async{
    final db = await SQLHelper.db();

    try{
      await db.delete('todo',where: "id = ?",whereArgs: [id]);
    }catch (error){
      debugPrint('Some error $error');
    }

  }
// update task
  static Future<int> updateTask(int id, String title, String description) async {
    final db = await SQLHelper.db();
    final data = {
      'title':title,
      'description':description
    };
    final result = await db.update('todo',data,where: "id=?",whereArgs: [id]);
    return result;
  }
}