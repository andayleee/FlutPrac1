//Запросы к бд
// ignore_for_file: constant_identifier_names

abstract class DataBaseRequest {
  static const String tableRole = 'Role';
  static const String tableUsers = 'Users';
  static const String tableClient = 'Client';
  static const String tableFurniture_Size = 'Furniture_Size';
  static const String tableFurniture_Detail = 'Furniture_Detail';
  static const String tableFurniture = 'Furniture';
  static const String tableOrder = 'Order';
  static const String tableWarehouse = 'WareHouse';
  static const String tableCell = 'Cell';

  static String deleteTable(String table) => 'DROP TABLE $table';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль

  static const List<String> tableList = [
    tableRole,
    tableUsers,
    tableClient,
    tableFurniture_Size,
    tableFurniture_Detail,
    tableFurniture,
    tableOrder,
    tableWarehouse,
    tableCell,
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _create_TableClient,
    _createTableFurniture_Size,
    _createTableFurniture_Detail,
    _createTableFurniture,
    _createTableOrder,
    _createTableWarehouse,
    _createTableCell,
  ];


  static const String _createTableRole =
        'CREATE TABLE "$tableRole" ("ID_Role" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("ID_Role" AUTOINCREMENT))';


  /// Запрос для создания таблицы Users

  static const String _createTableUsers =

      'CREATE TABLE "$tableUsers" ("ID_Users"	INTEGER NOT NULL, "Login"	TEXT NOT NULL UNIQUE, "Password"	TEXT NOT NULL, "Role_ID"	INTEGER NOT NULL, PRIMARY KEY("ID_Users" AUTOINCREMENT), FOREIGN KEY("Role_ID") REFERENCES "Role"("ID_Role"))';

  static const String _create_TableClient =

      'CREATE TABLE "$tableClient" ( "ID_Client"	INTEGER NOT NULL, "Last_Name"	TEXT NOT NULL, "First_Name"	TEXT NOT NULL, "Middle_Name"	TEXT, "Email"	TEXT NOT NULL UNIQUE, "Users_ID"	INTEGER NOT NULL, FOREIGN KEY("Users_ID") REFERENCES "Users"("ID_Users"), PRIMARY KEY("ID_Client" AUTOINCREMENT))';

  static const String _createTableFurniture_Size =

      'CREATE TABLE "$tableFurniture_Size" ( "ID_Furniture_Size"	INTEGER NOT NULL, "Lenght"	INTEGER NOT NULL, "Width"	INTEGER NOT NULL, "Height"	INTEGER NOT NULL, PRIMARY KEY("ID_Furniture_Size" AUTOINCREMENT))';

  static const String _createTableFurniture_Detail =

      'CREATE TABLE "$tableFurniture_Detail" ( "ID_Furniture_Detail"	INTEGER NOT NULL, "Weight"	INTEGER NOT NULL, "Serial_Number"	INTEGER NOT NULL, "Furniture_Size_ID"	INTEGER NOT NULL, FOREIGN KEY("Furniture_Size_ID") REFERENCES "Furniture_Size"("ID_Furniture_Size"), PRIMARY KEY("ID_Furniture_Detail" AUTOINCREMENT))';

  static const String _createTableFurniture =

      'CREATE TABLE "$tableFurniture" ( "ID_Furniture"	INTEGER NOT NULL, "Name_of_Furniture"	TEXT NOT NULL, "Price_of_Furniture"	INTEGER NOT NULL, "Furniture_Detail_ID"	INTEGER NOT NULL, FOREIGN KEY("Furniture_Detail_ID") REFERENCES "Furniture_Detail"("ID_Furniture_Detail"), PRIMARY KEY("ID_Furniture" AUTOINCREMENT))';

  static const String _createTableOrder =

      'CREATE TABLE "$tableOrder" ( "ID_Order"	INTEGER NOT NULL, "Sum_of_Order"	INTEGER NOT NULL, "Users_ID"	INTEGER NOT NULL, "Furniture_ID"	INTEGER NOT NULL, FOREIGN KEY("Furniture_ID") REFERENCES "Furniture"("ID_Furniture"), FOREIGN KEY("Users_ID") REFERENCES "Users"("ID_Users"), PRIMARY KEY("ID_Order" AUTOINCREMENT))';

  static const String _createTableWarehouse =

      'CREATE TABLE "$tableWarehouse" ( "ID_Warehouse"	INTEGER NOT NULL, "Address_of_Warehouse"	TEXT NOT NULL, PRIMARY KEY("ID_Warehouse" AUTOINCREMENT))';

  static const String _createTableCell =

      'CREATE TABLE "$tableCell" ( "ID_Cell"	INTEGER NOT NULL, "Count_of_Furniture"	INTEGER NOT NULL, "Warehouse_ID"	INTEGER NOT NULL, "Furniture_ID"	INTEGER NOT NULL, PRIMARY KEY("ID_Cell" AUTOINCREMENT), FOREIGN KEY("Furniture_ID") REFERENCES "Furniture"("ID_Furniture"), FOREIGN KEY("Warehouse_ID") REFERENCES "Warehouse"("ID_Warehouse"))';


}