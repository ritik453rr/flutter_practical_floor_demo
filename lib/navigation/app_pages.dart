import 'package:floor_demo/navigation/app_routes.dart';
import 'package:floor_demo/views/home/home_binding.dart';
import 'package:floor_demo/views/home/home_view.dart';
import 'package:get/get.dart';

/// A class that defines the pages of the application.
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
