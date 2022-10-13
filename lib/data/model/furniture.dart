import 'dart:convert';
import 'package:prac2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity{
   late int ID_Furniture;
   final String Name_of_Furniture;
   final int Price_of_Furniture;
   final int Furniture_Detail_ID;


Furniture({required this.ID_Furniture, required this.Name_of_Furniture,required this.Price_of_Furniture,required this.Furniture_Detail_ID,}):super(ID_Furniture:ID_Furniture,  Name_of_Furniture:Name_of_Furniture, Price_of_Furniture:Price_of_Furniture, Furniture_Detail_ID:Furniture_Detail_ID,);

Map<String,dynamic> toMap(){
   return{'ID_Furniture':ID_Furniture,'Name_of_Furniture':Name_of_Furniture,'Price_of_Furniture':Price_of_Furniture,'Furniture_Detail_ID':Furniture_Detail_ID,};
}

factory Furniture.toFromMap(Map<String,dynamic> json){
   return Furniture(ID_Furniture:json['ID_Furniture'], Name_of_Furniture:json['Name_of_Furniture'], Price_of_Furniture:json['Price_of_Furniture'], Furniture_Detail_ID:json['Furniture_Detail_ID'],);
}
}