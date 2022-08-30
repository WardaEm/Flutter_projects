

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/layout/home1.dart';
import 'package:untitled/models/list_model/model.dart';
import 'package:untitled/shared/bloc_observer.dart';

import 'modules/counter/counter.dart';
import 'modules/counter/counter_screen.dart';


void main(){
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeLayout(),
    );
  }
}
