import 'dart:convert';
import 'package:prac2/domain/entity/cell_entity.dart';

class Cell extends CellEntity{
   late int ID_Cell;
   final int Count_of_Furniture;
   final int Warehouse_ID;
   final int Furniture_ID;


Cell({required this.ID_Cell, required this.Count_of_Furniture,required this.Warehouse_ID,required this.Furniture_ID,}):super(ID_Cell:ID_Cell,  Count_of_Furniture:Count_of_Furniture, Warehouse_ID:Warehouse_ID, Furniture_ID:Furniture_ID,);

Map<String,dynamic> toMap(){
   return{'ID_Cell':ID_Cell,'Count_of_Furniture':Count_of_Furniture,'Warehouse_ID':Warehouse_ID,'Furniture_ID':Furniture_ID,};
}

factory Cell.toFromMap(Map<String,dynamic> json){
   return Cell(ID_Cell:json['ID_Cell'], Count_of_Furniture:json['Count_of_Furniture'], Warehouse_ID:json['Warehouse_ID'], Furniture_ID:json['Furniture_ID'],);
}
}