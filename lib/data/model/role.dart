import 'package:prac2/domain/entity/role_entity.dart';

class Role extends RoleEntity{
  late int ID_Role;
  final String role;

  Role({required this.role}):super(role: role);


  Map<String, dynamic> toMap(){
    return {'role': role};
  }

  factory Role.toFromMap(Map<String,dynamic> json){
    return Role(role: json['role']);
  }


}