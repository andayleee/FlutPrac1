import 'dart:convert';
import 'package:prac2/core/crypto/crypto.dart';
import 'package:prac2/domain/entity/role_entity.dart';
import 'package:prac2/domain/entity/users_entity.dart';

class Users extends UsersEntity {
  Users({
    super.ID_Users = 0,
    required super.Login,
    required super.Password,
    required super.Role_ID,
  });

  Map<String, dynamic> toMap() {
    return {
      'Login': Login,
      'Password': Crypto.crypto(Password),
      'Role_ID': Role_ID,
    };
  }

  factory Users.toFromMap(Map<String, dynamic> json) {
    return Users(
        Login: json['Login'],
        Password: json['Password'],
        Role_ID: json ['ID_Role'],
        );
  }
}
