import 'package:floor_demo/database/app_database.dart';
import 'package:floor_demo/navigation/app_pages.dart';
import 'package:floor_demo/navigation/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
final database=await $FloorAppDateBase.databaseBuilder('app_database.db').build();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
