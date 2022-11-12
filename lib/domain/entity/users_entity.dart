import 'package:prac2/domain/entity/role_entity.dart';

class UsersEntity{
   late int ID_Users;
   final String Login;
   final String Password;
   final int Role_ID;

UsersEntity({ID_Users=0, required this.Login , required this.Password , required this.Role_ID});
}