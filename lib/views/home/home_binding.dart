import 'package:floor_demo/views/home/home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the home view.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}