import 'package:get/get.dart';

class TestController extends GetxController{
  String? name;
  String? age;
  String? preRoute;
  String? currentRoute;
  @override
  void onInit() {
    name = Get.arguments["name"];
    age = Get.arguments["age"];
    preRoute = Get.previousRoute;
    currentRoute = Get.currentRoute;
    super.onInit();
  }
}