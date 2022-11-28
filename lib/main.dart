import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_practise/locale/locale.dart';
import 'package:getx_practise/locale/locale_controller.dart';
import 'package:getx_practise/middleware/auth_middleware.dart';
import 'package:getx_practise/middleware/super_middleware.dart';
import 'package:getx_practise/services/setting_services.dart';
import 'package:getx_practise/utils/bindings.dart';
import 'package:getx_practise/view/auth_middleware_practise/login_screen.dart';
import 'package:getx_practise/view/home/home_screen.dart';
import 'package:getx_practise/view/super.dart';
import 'package:getx_practise/view/test_route_getx/test.dart';
import 'package:getx_practise/view/test_route_getx/test2.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  await initialServices();
  runApp( const MyApp());
}

Future initialServices()async{
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
      title: 'GetX Practise',
      theme: Themes.customLightTheme,
      // home: TestScreen(),
      initialRoute:"/home",
      locale: controller.initialLang, // set the translations language as the device language
      translations: MyLocale(),
      initialBinding: MyBindings(),//first way to call your bindings over all the app
      getPages: [
        GetPage(
            name: "/login", page:()=> const LoginScreen(),
            middlewares:[ AuthMiddleWare(),SuperMiddleWare(),]
        ),
        GetPage(name: "/home", page:()=> Home()),
        GetPage(name: "/test2", page:()=> Test2Screen()),
        GetPage(name: "/test1", page:()=> TestScreen()),
        GetPage(name: "/super", page:()=> const Super()),
        // GetPage(name: "/admin", page:()=> const Admin()),
      ],
    );
  }
}

class Themes{
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black54
    ),
      textTheme: const TextTheme(
          button: TextStyle(
              fontFamily: "Cairo",
              fontSize: 16,
              fontWeight: FontWeight.w600
          )
      )
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.teal
    ),
      textTheme: const TextTheme(
          button: TextStyle(
              fontFamily: "Cairo",
              fontSize: 16,
              fontWeight: FontWeight.w600
          )
      )
  );
}