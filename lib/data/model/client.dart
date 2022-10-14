import 'dart:convert';
import 'package:prac2/domain/entity/client_entity.dart';

class Client extends ClientEntity{
   late int ID_Client;
   final String Last_Name;
   final String First_Name;
   final String Middle_Name;
   final String Email;
   final int Users_ID;


Client({required this.ID_Client, required this.Last_Name,required this.First_Name,required this.Middle_Name,required this.Email,required this.Users_ID,}):super(ID_Client:ID_Client,  Last_Name:Last_Name, First_Name:First_Name, Middle_Name:Middle_Name, Email:Email, Users_ID: Users_ID,);

Map<String,dynamic> toMap(){
   return{'Last_Name': Last_Name,'First_Name': First_Name,'Middle_Name': Middle_Name,'Email': Email,'Users_ID': Users_ID,};
}

factory Client.toFromMap(Map<String,dynamic> json){
   return Client(ID_Client:json['ID_Client'], Last_Name:json['Last_Name'], First_Name:json['First_Name'], Middle_Name:json['Middle_Name'], Email:json['Email'], Users_ID:json['Users_ID'],);
}
}