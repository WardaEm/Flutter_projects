import 'package:flutter/material.dart';
class MessengerScree extends StatelessWidget {
  const MessengerScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4')
            ),
             SizedBox(width: 10,),
             Text('Chats',
             style: TextStyle(
               color: Colors.black
             ),
             ),
          ],
         ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            child: Icon(Icons.camera_alt_rounded,color: Colors.black,size: 16,),radius: 15,backgroundColor: Colors.black12,
          )),
          IconButton(onPressed: (){}, icon: CircleAvatar(
            child: Icon(Icons.edit,color: Colors.black,size: 18,),radius: 15,backgroundColor: Colors.black12,
          )),
        ],
      ),

       body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               padding: EdgeInsets.all(5),
               decoration: BoxDecoration(color: Colors.black12,
               borderRadius: BorderRadius.circular(10)
    ),
               child: Row(
                 children: [

                  Icon(Icons.search),
                  SizedBox(width: 15,),
                  Text('search'),
                ],
              ),
            ),
            SizedBox(height:15),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   Row(
    children: [
                  Container(width: 60,
                    child: Column(

          children: [
           Stack(alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                           padding: const EdgeInsetsDirectional.only(
                             bottom: 3,
                             end: 3
                           ),
                           child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.green,
                        ),
                         ),
                    ],
            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),
          ],
                    ),
                  ),
      SizedBox(width:15),
               Container(width: 60,
                 child: Column(
                   children: [
                     Stack(
                       alignment: AlignmentDirectional.bottomEnd,
                       children: [
                         CircleAvatar(
                           radius: 30,
                           backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                         CircleAvatar(
                           radius: 8,
                           backgroundColor: Colors.white,
                         ),
                         Padding(

                           padding: const EdgeInsetsDirectional.only(
                               bottom: 3,
                               end: 3
                           ),
                           child: CircleAvatar(

                             radius: 7,

                             backgroundColor: Colors.green,

                           ),

                         ),

                       ],

                     ),

                     SizedBox(height: 6,),

                     Text('Abdallah Mansour Ali mansour',

                       maxLines: 2,

                       overflow: TextOverflow.ellipsis,



                     ),



                   ],



                 )

                 ),

      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                CircleAvatar(

                  radius: 8,

                  backgroundColor: Colors.white,

                ),



                Padding(

                  padding: const EdgeInsetsDirectional.only(

                      bottom: 3,

                      end: 3

                  ),

                  child: CircleAvatar(

                    radius: 7,

                    backgroundColor: Colors.green,

                  ),

                ),

              ],

            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),



          ],

        ),

      ),

      SizedBox(width:15),

      Container(width: 60,

          child: Column(

            children: [

              Stack(alignment: AlignmentDirectional.bottomEnd,

                children: [

                  CircleAvatar(

                    radius: 30,

                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                  CircleAvatar(

                    radius: 8,

                    backgroundColor: Colors.white,

                  ),



                  Padding(

                    padding: const EdgeInsetsDirectional.only(

                        bottom: 3,

                        end: 3

                    ),

                    child: CircleAvatar(

                      radius: 7,

                      backgroundColor: Colors.green,

                    ),

                  ),

                ],

              ),

              SizedBox(height: 6,),

              Text('Abdallah Mansour Ali mansour',

                maxLines: 2,

                overflow: TextOverflow.ellipsis,



              ),



            ],



          )

      ),

      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                CircleAvatar(

                  radius: 8,

                  backgroundColor: Colors.white,

                ),
                Padding(

                  padding: const EdgeInsetsDirectional.only(

                      bottom: 3,

                      end: 3

                  ),

                  child: CircleAvatar(

                    radius: 7,

                    backgroundColor: Colors.green,

                  ),

                ),

              ],

            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),



          ],

        ),

      ),

      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                CircleAvatar(

                  radius: 8,

                  backgroundColor: Colors.white,

                ),



                Padding(

                  padding: const EdgeInsetsDirectional.only(

                      bottom: 3,

                      end: 3

                  ),

                  child: CircleAvatar(

                    radius: 7,

                    backgroundColor: Colors.green,

                  ),

                ),

              ],

            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),



          ],

        ),

      ),
      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                CircleAvatar(

                  radius: 8,

                  backgroundColor: Colors.white,

                ),



                Padding(

                  padding: const EdgeInsetsDirectional.only(

                      bottom: 3,

                      end: 3

                  ),

                  child: CircleAvatar(

                    radius: 7,

                    backgroundColor: Colors.green,

                  ),

                ),

              ],

            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),



          ],

        ),

      ),
      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(

                  radius: 30,

                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),

                CircleAvatar(

                  radius: 8,

                  backgroundColor: Colors.white,

                ),



                Padding(

                  padding: const EdgeInsetsDirectional.only(

                      bottom: 3,

                      end: 3

                  ),

                  child: CircleAvatar(

                    radius: 7,

                    backgroundColor: Colors.green,

                  ),

                ),

              ],

            ),

            SizedBox(height: 6,),

            Text('Abdallah Mansour Ali mansour',

              maxLines: 2,

              overflow: TextOverflow.ellipsis,



            ),



          ],

        ),

      ),
      SizedBox(width:15),

      Container(width: 60,

        child: Column(

          children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      bottom: 3,
                      end: 3
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6,),
            Text('Abdallah Mansour Ali mansour',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
               ]),
),
    Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,),
                 Row(

  children: [

            Stack(alignment: AlignmentDirectional.bottomEnd,

              children: [

                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      bottom: 3,
                      end: 3
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height:7,),

                  Row(
                    children: [
                      Expanded(
                          child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,

                          ),
                        ),
                      ),
                      Text('02:00 pm')
                    ],
                  ),

                ],
              ),
            )
  ],
),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
                     SizedBox(height:15,),
                     Row(

                       children: [

                         Stack(alignment: AlignmentDirectional.bottomEnd,

                           children: [

                             CircleAvatar(
                               radius: 30,
                               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),),
                             CircleAvatar(
                               radius: 8,
                               backgroundColor: Colors.white,
                             ),
                             Padding(
                               padding: const EdgeInsetsDirectional.only(
                                   bottom: 3,
                                   end: 3
                               ),
                               child: CircleAvatar(
                                 radius: 7,
                                 backgroundColor: Colors.green,
                               ),
                             ),
                           ],
                         ),
                         SizedBox(width: 20,),
                         Expanded(
                           child: Column(

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Abdalluh ali mohamed rady ali warda emad abeer alaa ola samah',
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 maxLines: 1,
                                 overflow: TextOverflow.ellipsis,
                               ),
                               SizedBox(height:7,),

                               Row(
                                 children: [
                                   Expanded(
                                       child: Text('Hello my name is abdallah warda emad abeer alaa ola samah ',
                                         maxLines: 2,
                                         overflow: TextOverflow.ellipsis,

                                       )
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10),
                                     child: Container(
                                       height: 7,
                                       width: 7,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                         shape: BoxShape.circle,

                                       ),
                                     ),
                                   ),
                                   Text('02:00 pm')
                                 ],
                               ),

                             ],
                           ),
                         )
                       ],
                     ),
          ],
        ),
      ),
    ),

           ],
             ),
       )
    );
  }
}
