



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/shared/cubit/cubit.dart';
import 'package:untitled/shared/cubit/states.dart';


import '../modules/Done_tasks/done_task_screen.dart';
import '../modules/archived_Tasks/archived_tasks_screen.dart';
import '../modules/new_tasks/new_tasks_screen.dart';
import '../shared/components/component.dart';
import '../shared/components/constant.dart';
// 1. create database
// 2. create tables
// 3. open database
// 4. insert to database
// 5. get from database
// 6. update in database
// 7. delete from database


class HomeLayout extends StatelessWidget
{

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>  AppCubit()..createDatabase() ,
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext context, state) {
          if(state is AppInsertDatabase){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, Object? state) {


          AppCubit cubit=AppCubit.get(context);

          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(
                // AppCubit.get(context).titles[currentIndex],
                cubit.titles[cubit.currentIndex] ,
              ),
            ),
            body:cubit.Newtasks==0
                ? Center(child: CircularProgressIndicator())
                :cubit. screens[cubit.currentIndex],
            // ConditionalBuilder(condition: tasks.length>0, builder: (context)=> screens[currentIndex],fallback: (context)=>CircularProgressIndicator()),


            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState!.validate()) {
                    cubit.insertToDatabase(title: titleController.text, time: timeController.text, date: dateController.text);
                    // insertToDatabase(
                    //   title: titleController.text,
                    //   date: dateController.text,
                    //   time: timeController.text,
                    // ).then((value) {
                    //
                    //   Navigator.pop(context);
                    //   isBottomSheetShown = false;
                    //   // setState(() {
                    //   //   fabIcon=Icons.edit;
                    //   // });
                    //
                    //
                    // });
                  }
                } else {
                  scaffoldKey.currentState
                      ?.showBottomSheet(
                        (context) =>
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(
                            20.0,
                          ),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                defaultText(
                                  controller: titleController,
                                  type: TextInputType.text,
                                  onTap: () {
                                    print(titleController.text);
                                  },
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'title must not be empty';
                                    }

                                    return null;
                                  },
                                  label: 'Task Title',
                                  prefix: Icons.title,
                                  hint: 'title is',
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                defaultText(
                                  controller: timeController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((value) {
                                      timeController.text =
                                          value!.format(context).toString();
                                      print(value.format(context));
                                    });
                                  },
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'time must not be empty';
                                    }

                                    return null;
                                  },
                                  label: 'Task Time',
                                  prefix: Icons.watch_later_outlined,
                                  hint: 'time is',
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                defaultText(
                                  controller: dateController,
                                  type: TextInputType.datetime,
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                    ).then((value) {
                                      dateController.text =
                                          DateFormat.yMMMd().format(value!);
                                    });
                                  },
                                  validate: (String value) {
                                    if (value.isEmpty) {
                                      return 'date must not be empty';
                                    }

                                    return null;
                                  },
                                  label: 'Task Date',
                                  prefix: Icons.calendar_today,
                                  hint: 'date is',
                                ),
                              ],
                            ),
                          ),
                        ),
                    elevation: 20.0,
                  )
                      .closed
                      .then((value) {
                        cubit.changeBottomSheetState(isShow: false, icon:Icons.edit);


                  });
                  cubit.changeBottomSheetState(isShow: true, icon:Icons.add);


                }
              },
              child: Icon(
                cubit.fabIcon,
              ),
            ),


            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex:cubit.currentIndex,
              onTap: (index) {
             cubit.changeIndex(index);
                // setState(() {
                //   currentIndex = index;
                // });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle_outline,
                  ),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.archive_outlined,
                  ),
                  label: 'Archived',
                ),
              ],

            ),
          );
        } ),
          );

    }

  // Instance of 'Future<String>'
  //
  // Future<String> getName() async {
  //   return 'Ahmed Ali';
  // }


}


