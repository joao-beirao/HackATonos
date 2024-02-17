import 'package:sqflite/sqflite.dart';

import 'dart:async';

import 'dart:io';

import 'package:path_provider/path_provider.dart';



class DatabaseConnect{



Future<Database> get database async {
  Database _database = await initializeDatabase();
  return _database;
}



  Future<Database> initializeDatabase() async {

    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'mydb.db';
    var notesDatabase = await openDatabase(path, version: 1, onCreate: createTable);
    return notesDatabase;

  }



  void createTable(Database db, int newVersion) async {
    await db.execute('CREATE TABLE employee(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, address TEXT)');
  }



  Future<int> insertStatic() async {

    Database db = await this.database;

    var result = await db.rawInsert("INSERT INTO employee(name,address) VALUES('steve rogers','brooklyn')");

    return result;

  }



  Future<List<Map<String, dynamic>>> getList() async {

    Database db = await this.database;

    var result = await db.rawQuery('SELECT * FROM employee order by id ASC');

    return result;

  }



}

