import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/skills.dart';
import 'package:untitled1/education.dart';
import 'package:untitled1/projects.dart';

void main() => runApp(MaterialApp(
    initialRoute:'/home',
    routes: {
      '/home':(context)=>MyApp(),
      '/skills':(context)=>skills(),
      '/projects':(context)=>projects(),
      '/education':(context)=>education(),

    },

));
