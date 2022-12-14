import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {

  static Database? _db;

  Future<Database?> get db async{
   if(_db ==null){
     _db=await initialDb();
     return _db;
   }else{
     return _db;
   }

  }

  initialDb()async{

    String databasepath=await getDatabasesPath();
    String path = join(databasepath,'wael.db');
    Database mydb=await openDatabase(path,onCreate: _oncreate,version: 2,onUpgrade: _onupgrade);
    return mydb;
  }



  Future<void> _oncreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE "notes" (
    "id" INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT ,
    "title" TEXT NOT NULL,
    "date" TEXT NOT NULL,
      "time" TEXT NOT NULL,
    )
        ''');
    print("creat Database and tabel");
  }
  readData(String sql)async{
    Database? mydb=await db;
   List<Map> response= await mydb!.rawQuery(sql);
    return response;
  }
 insertData(String sql)async {
   Database? mydb = await db;
   int response = await mydb!.rawInsert(sql);
   return response;
 }
  updateData(String sql)async{
    Database? mydb=await db;
    int response= await mydb!.rawUpdate(sql);
    return response;

}
 deleteData(String sql)async {
   Database? mydb = await db;
   int response = await mydb!.rawDelete(sql);
   return response;
 }

  Future<void> _onupgrade(Database db, int oldVersion, int newVersion)async {
print('onupgrade');

  }
}