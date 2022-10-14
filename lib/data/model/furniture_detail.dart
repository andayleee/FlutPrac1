import 'dart:convert';
import 'package:prac2/domain/entity/furniture_detail_entity.dart';

class Furniture_Detail extends Furniture_DetailEntity{
   late int ID_Furniture_Detail;
   final int Weight;
   final int Serial_Number;
   final int Furniture_Size_ID;


Furniture_Detail({required this.ID_Furniture_Detail, required this.Weight,required this.Serial_Number,required this.Furniture_Size_ID,}):super(ID_Furniture_Detail:ID_Furniture_Detail,  Weight: Weight, Serial_Number: Serial_Number, Furniture_Size_ID: Furniture_Size_ID,);

Map<String,dynamic> toMap(){
   return{'Weight': Weight,'Serial_Number': Serial_Number,'Furniture_Size_ID': Furniture_Size_ID,};
}

factory Furniture_Detail.toFromMap(Map<String,dynamic> json){
   return Furniture_Detail(ID_Furniture_Detail:json['ID_Furniture_Detail'], Weight:json['Weight'], Serial_Number:json['Serial_Number'], Furniture_Size_ID:json['Furniture_Size_ID'],);
}
}