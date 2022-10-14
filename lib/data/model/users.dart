import 'dart:convert';
import 'package:prac2/domain/entity/users_entity.dart';

class Users extends UsersEntity{
   late int ID_Users;
   final String Login;
   final String Password;
   final int Role_ID;


Users({required this.ID_Users, required this.Login ,required this.Password ,required this.Role_ID ,}):super(ID_Users:ID_Users, Login :Login ,Password :Password ,Role_ID :Role_ID ,);

Map<String,dynamic> toMap(){
   return{'Login':Login ,'Password':Password ,'Role_ID':Role_ID ,};
}

factory Users.toFromMap(Map<String,dynamic> json){
   return Users(ID_Users:json['ID_Users'],Login :json['Login'],Password :json['Password'],Role_ID :json['Role_ID'],);
}
}