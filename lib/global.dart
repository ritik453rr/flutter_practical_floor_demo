import 'package:floor_demo/database/app_database.dart';

class Global {
  static late AppDataBase db;

  static Future<void> initDb() async {
    AppDataBase db =
        await $FloorAppDataBase.databaseBuilder('app_database.db').build();
  }
}
