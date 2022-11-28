import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_practise/main.dart';

class AuthMiddleWare extends GetMiddleware{

  @override
  int?  get priority => 2; // this makes middleware priority call second when run

  @override
  RouteSettings? redirect(String? route){
    if(sharedPref!.getString("id") != null) return const RouteSettings(name: "/home");
  }

  // RouteSettings? redirect2(String? route){// use this if i have user & admin roles in my app
  //   if(sharedPref!.getString("role") == "user") return const RouteSettings(name: "/home");
  //   if(sharedPref!.getString("role") == "admin") return const RouteSettings(name: "/admin");
  // }
}