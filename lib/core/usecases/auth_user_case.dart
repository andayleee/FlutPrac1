import 'package:dartz/dartz.dart';
import 'package:prac2/domain/entity/role_entity.dart';

abstract class AuthUserCase<Type, Params, Params2>{
  Future<Either<Type,RoleEnum>> singIn(Params params);
  Future<Either<Type,bool>> singUp(Params2 params);
}