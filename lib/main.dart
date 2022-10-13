import 'dart:html';
import 'package:flutter/material.dart';
import 'package:prac2/core/db/data_base_helper.dart';

void main() {
  //DataBaseHelper.instance.test();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

