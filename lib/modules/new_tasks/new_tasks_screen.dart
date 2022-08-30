import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/components/component.dart';
import 'package:untitled/shared/components/constant.dart';
import 'package:untitled/shared/cubit/cubit.dart';
import 'package:untitled/shared/cubit/states.dart';
class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppStates>(
      listener: (BuildContext context, Object? state) {  },
      builder: (BuildContext context, state) {
   var tasks=AppCubit.get(context).Newtasks;

        return tasks.length>0 ? ListView.separated(
        itemBuilder: (context, index) => buildItem(tasks[index],context),
        separatorBuilder: (context, index) =>
        Container(
        color: Colors.grey[300],
        height: 1.0,
        width: double.infinity,
        ),
        itemCount: tasks.length)

       : Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu),
              Text(' No Tasks yet,please Add some task')
            ],
          ),
       );
      } );


  }
}
// ListView.separated(
// itemBuilder: (context, index) => buildItem(tasks[index],context),
// separatorBuilder: (context, index) =>
// Container(
// color: Colors.grey[300],
// height: 1.0,
// width: double.infinity,
// ),
// itemCount: tasks.length);