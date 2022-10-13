import 'dart:convert';
import 'package:prac2/domain/entity/warehouse_entity.dart';

class Warehouse extends WarehouseEntity{
   late int ID_Warehouse;
   final String Address_of_Warehouse;


Warehouse({required this.ID_Warehouse, required this.Address_of_Warehouse,}):super(ID_Warehouse:ID_Warehouse,  Address_of_Warehouse:Address_of_Warehouse,);

Map<String,dynamic> toMap(){
   return{'ID_Warehouse':ID_Warehouse,'Address_of_Warehouse':Address_of_Warehouse,};
}

factory Warehouse.toFromMap(Map<String,dynamic> json){
   return Warehouse(ID_Warehouse:json['ID_Warehouse'], Address_of_Warehouse:json['Address_of_Warehouse'],);
}
}