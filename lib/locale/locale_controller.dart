import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_practise/main.dart';

class MyLocaleController extends GetxController{

  Locale initialLang = sharedPref!.getString("lang") == null ?
  Get.deviceLocale! : Locale(sharedPref!.getString("lang")!) ;

 void changeLang(String codeLang){
    Locale locale = Locale(codeLang);
    sharedPref!.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}