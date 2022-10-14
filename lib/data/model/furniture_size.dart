import 'dart:convert';
import 'package:prac2/domain/entity/furniture_size_entity.dart';

class Furniture_Size extends Furniture_SizeEntity{
   late int ID_Furniture_Size;
   final int Lenght;
   final int Width;
   final int Height;


Furniture_Size({required this.ID_Furniture_Size, required this.Lenght,required this.Width,required this.Height,}):super(ID_Furniture_Size:ID_Furniture_Size,  Lenght: Lenght, Width: Width, Height: Height,);

Map<String,dynamic> toMap(){
   return{'Lenght': Lenght,'Width': Width,'Height': Height,};
}

factory Furniture_Size.toFromMap(Map<String,dynamic> json){
   return Furniture_Size(ID_Furniture_Size:json['ID_Furniture_Size'], Lenght:json['Lenght'], Width:json['Width'], Height:json['Height'],);
}
}