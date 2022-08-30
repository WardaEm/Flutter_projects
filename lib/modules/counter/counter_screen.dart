import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';
class CounterScreen extends StatelessWidget {

   CounterScreen({Key? key}) : super(key: key);
   @override
   Widget build(BuildContext context) {
     return BlocProvider(
       create: (BuildContext context)=>CounterCubit() ,
       child: BlocConsumer<CounterCubit,CounterStates>
         (listener: (context,state) {

         if(state is CounterPlusState){print('plus state${state.counter}');}
         if(state is CounterMinusState){print('minus state${state.counter}');}

       },
       builder: (context,state){
     return Scaffold(
     appBar: AppBar(
     title: Text(
     'Counter',

     ),
     ),
     body: Center(
     child: Row(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
     TextButton(onPressed: (){

     CounterCubit.get(context).minus();
     }, child:Text(
     'MINUS'
     ),),
     Padding(
     padding: const EdgeInsets.symmetric(horizontal: 20),
     child: Text(
     '${CounterCubit.get(context).counter}',
     style: TextStyle(
     fontSize: 25,
     fontWeight: FontWeight.bold
     ),
     ),
     ),
     TextButton(onPressed: (){
CounterCubit.get(context).plus();

     }, child:Text(
     'PLUS'
     ),),

     ],
     ),
         ));

     })




     );
   }


}

