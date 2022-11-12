import 'package:prac2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:prac2/domain/entity/role_entity.dart';

abstract class AuthRepositories {
  String get table;
  //Метод для авторизации пользователя
  Future<Either<String,RoleEnum>> singIn(String login, String password);
  //Метод для регистрации пользователя
  Future<Either<String,bool>> singUp(String lastName,String firstName,String middleName,String email,String login, String password);
}