import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/shared/cubit/states.dart';

import '../../modules/Done_tasks/done_task_screen.dart';
import '../../modules/archived_Tasks/archived_tasks_screen.dart';
import '../../modules/new_tasks/new_tasks_screen.dart';
import '../components/constant.dart';

class AppCubit extends Cubit<AppStates>{
 AppCubit():super(AppInitialState());
static AppCubit get(context)=>BlocProvider.of(context);

 int currentIndex = 0;

 List<Widget> screens = [
  NewTaskScreen(),
  DoneTaskScreen(),
  ArchivedTaskScreen(),
 ];


 List<String> titles = [
  'New Tasks',
  'Done Tasks',
  'Archived Tasks',
 ];

 void changeIndex(int index){
  currentIndex=index;
emit(AppChangeNavBar());
 }


 Database? database;
 List<Map> Newtasks = [];
 List<Map> Donetasks = [];
 List<Map> Archivedtasks = [];


 void createDatabase()  {
   openDatabase(
   'todo.db',
   version: 1,
   onCreate: (database, version) {
    // id integer
    // title String
    // date String
    // time String
    // status String

    print('database created');
    database
        .execute(
        'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
        .then((value) {
     print('table created');
    }).catchError((error) {
     print('Error When Creating Table ${error.toString()}');
    });
   },
   onOpen: (database) {

     getDataFromDatabase(database);
    print('database opened');
   },
  ).then((value) {
   database=value;
   emit(AppCreatDatabase());
   });
 }

  insertToDatabase({
  @required String ?title,
  @required String ?time,
  @required String ?date,
 }) async {
 await database?.transaction((txn)
async
{
   txn
       .rawInsert(
    'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")',
   )
       .then((value) {
    print('$value inserted successfully');
    emit(AppInsertDatabase());
    getDataFromDatabase(database);
    });
   }).catchError((error) {
    print('Error When Inserting New Record ${error.toString()}');
   });



 }


void getDataFromDatabase(database){
   Newtasks=[];
   Donetasks=[];
   Archivedtasks=[];
   emit(AppGetDatabaseLoading());
  database.rawQuery('SELECT * FROM tasks').then((value) {


    value.forEach((element) {
      if(element['status']=='new') {
        Newtasks.add(element);
      } else if(element['status']=='done') {
        Donetasks.add(element);
      } else
     Archivedtasks.add(element);
    });
    emit(AppGetDatabase());
  });

 }

void updatedata({
  required String status,
  required int id,
}){
 database!.rawUpdate(
       'UPDATE tasks SET status = ? WHERE id = ?',
       ['$status', id, ]).then((value){
         getDataFromDatabase(database);
   emit(AppUpdateDatabase());
 });

 }
 void Deletedata({
   required int id,
}){
   database!
       .rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
         getDataFromDatabase(database);
         emit(AppDeleteDatabase());
   });
 }



 bool isBottomSheetShown = false;
 IconData fabIcon = Icons.edit;

 void changeBottomSheetState({
 required bool isShow,
  required IconData icon,

}){

  isBottomSheetShown=isShow;
  fabIcon=icon ;
  emit(AppChangeBottomsheet());
 }


}
