import 'package:flutter/material.dart';
import 'package:untitled/modules/messenger/messenger_model.dart';
class UserModel{
  final int ? id;
  final String ? name;
  final String ? phone;
  UserModel({
   @required this.id,
    @required this.name,
    @required this.phone,

});
}
class Model extends StatelessWidget {
  List<UserModel>users=[
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
    UserModel(id: 1, name: 'abdallah', phone: '11235464'),
    UserModel(id: 2, name: 'ali', phone: '1128528+6+'),
    UserModel(id: 3, name: 'aser', phone: '1127899++'),
  ];

   Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List Of Users'

        ),
      ),
      body:ListView.separated(
          itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
        color: Colors.grey[300],
            width: 25,
            height: 3,
      ),
          itemCount: users.length)
    );
  }
//  build item
//build list
//add item to list
 Widget buildUserItem(UserModel model)=> Padding(
   padding: const EdgeInsets.all(20.0),
   child: Row(
       children: [
         CircleAvatar(
           radius: 25,
           child:   Text(
             '${model.id}',
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.bold,
             ),
           ),

         ),
         SizedBox(width: 20,),
         Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 '${model.name}',
                 style: TextStyle(
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
                 ),
               ),


               Text(''
                   '${model.phone}',
                 style: TextStyle(
                     color: Colors.grey
                 ),

               ),
             ])
       ]
   ),
 );


}
