import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2/main.dart';
import 'package:prac2/presentation/screen/sing_in.dart';
import 'package:prac2/presentation/screen/sing_up.dart';
import 'package:prac2/presentation/screen/admin_page.dart';
import 'package:prac2/presentation/screen/client_page.dart';
const String screen1NamePage = 'sing_in';
const String screen2NamePage = 'sing_up';
const String screen3NamePage = 'admin_page';
const String screen4NamePage = 'client_page';

class AppRouter{
 Route<dynamic>? generateRouter(RouteSettings settings){

    switch(settings.name){
      case screen1NamePage:{
        return MaterialPageRoute(builder: (_) => sing_in());
      }
      case screen2NamePage:{
        return MaterialPageRoute(builder: (_) => sing_up());
      }
      case screen3NamePage:{
        return MaterialPageRoute(builder: (_) => admin_page());
      }
      case screen4NamePage:{
        return MaterialPageRoute(builder: (_) => client_page());
      }
    }
  }
}