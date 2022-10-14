import 'dart:convert';
import 'package:prac2/domain/entity/order_entity.dart';

class Order extends OrderEntity{
   late int ID_Order;
   final int Sum_of_Order;
   final int Users_ID;
   final int Furniture_ID;


Order({required this.ID_Order, required this.Sum_of_Order,required this.Users_ID,required this.Furniture_ID,}):super(ID_Order:ID_Order,  Sum_of_Order:Sum_of_Order, Users_ID:Users_ID, Furniture_ID:Furniture_ID,);

Map<String,dynamic> toMap(){
   return{'Sum_of_Order':Sum_of_Order,'Users_ID':Users_ID,'Furniture_ID':Furniture_ID,};
}

factory Order.toFromMap(Map<String,dynamic> json){
   return Order(ID_Order:json['ID_Order'], Sum_of_Order:json['Sum_of_Order'], Users_ID:json['Users_ID'], Furniture_ID:json['Furniture_ID'],);
}
}