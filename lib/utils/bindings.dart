import 'package:get/get.dart';
import 'package:getx_practise/controller/home_controller.dart';
import 'package:getx_practise/locale/locale_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
   Get.put(HomeController(),permanent: true);
   Get.put(MyLocaleController());
  }
}