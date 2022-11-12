import 'package:prac2/common/data_base_request.dart';
import 'package:prac2/core/crypto/crypto.dart';
import 'package:prac2/core/db/data_base_helper.dart';
import 'package:prac2/core/exeption/failure.dart';
import 'package:prac2/data/model/client.dart';
import 'package:prac2/data/model/users.dart';
import 'package:prac2/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:prac2/domain/repositories/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

class AuthRepositoriesImpl implements AuthRepositories {

  final _db = DataBaseHelper.instance.database;

    @override
  String get table => DataBaseRequest.tableUsers;
  String get tableClients => DataBaseRequest.tableClient;

  @override
  Future<Either<String, RoleEnum>> singIn(String login, String password) async {
    
    try{
        var user = await _db.query(table, columns: ['Login','Password','Role_ID'], where: 'Login = ?',whereArgs: [login],);
      if(user.isEmpty){
        return Left('Такого пользователя нет');
      }
      if(user.first['Password'] != Crypto.crypto(password)){
        return Left(AuthPasswordFailure().errorMessage);
      }
      return Right(RoleEnum.values[(user.first['Role_ID'] as int) - 1]);
    }on DatabaseException catch (error){
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }

  }

  @override
  Future<Either<String, bool>> singUp(String lastName,String firstName,String middleName,String email,String login, String password) async {
    try {
      await _db.insert(table, 
      Users(Login: login, Password: password, Role_ID: RoleEnum.user.ID_Role).toMap(),);
      final dynamic data = await _db.rawQuery('SELECT ID_Users FROM Users ORDER BY ID_Users DESC LIMIT 1');
      await _db.insert(
        tableClients,
        Client(
          Last_Name: lastName,
          First_Name: firstName,
          Middle_Name: middleName,
          Email: email,
          Users_ID: data.last['ID_Users'],
        ).toMap(),
      );
      return const Right(true);
    } on DatabaseException catch (error) {
      return Left(FailureDB(error.getResultCode()!).error.errorMessage);
    }
  }
 }