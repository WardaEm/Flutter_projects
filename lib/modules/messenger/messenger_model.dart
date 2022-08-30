import 'package:flutter/material.dart';
class UserModel{
  final int ? id;
  final String ? name;
  final String  ? phone;
  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
});
}
class UsersScreen extends StatelessWidget {
  List<UserModel>users=[
    UserModel(id: 1, name:'warda', phone:'01200562463'),
    UserModel(id: 2, name:'Abeer', phone:'01125462463'),
    UserModel(id: 3, name:'Alaa', phone:'011255893'),
    UserModel(id: 1, name:'warda', phone:'01200562463'),
    UserModel(id: 2, name:'Abeer', phone:'01125462463'),
    UserModel(id: 3, name:'Alaa', phone:'011255893'),
    UserModel(id: 1, name:'warda', phone:'01200562463'),
    UserModel(id: 2, name:'Abeer', phone:'01125462463'),
    UserModel(id: 3, name:'Alaa', phone:'011255893'),
    UserModel(id: 1, name:'warda', phone:'01200562463'),
    UserModel(id: 2, name:'Abeer', phone:'01125462463'),
    UserModel(id: 3, name:'Alaa', phone:'011255893'),

  ];

    UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Users',
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context,index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            height:2,
            color: Colors.grey[300]
          )
      , itemCount: users.length),
    );
  }
  Widget buildUserItem(UserModel model)=> Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius:25,
          child: Text(
         '   ${model.id},',
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
              '   ${model.name},',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '   ${model.phone},',
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
          ],
        )

      ],
    ),
  );







//  build item
//build list
//add item to list
}
