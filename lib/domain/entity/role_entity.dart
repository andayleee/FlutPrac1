class RoleEntity{
  late int ID_Role;
  final String role;

  RoleEntity({required this.role});


}

enum RoleEnum{
  admin(ID_Role: 1, role: 'Администатор'),
  user(ID_Role: 2, role: 'Пользователь');
  const RoleEnum(
    {
      required this.role,
      required this.ID_Role,
    }
  );
  final String role;
  final int ID_Role;
}