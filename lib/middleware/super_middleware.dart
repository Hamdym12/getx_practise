import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_practise/main.dart';

class SuperMiddleWare extends GetMiddleware{

  @override
  int?  get priority => 1;// this makes middleware priority call first when run

  bool myVar = false;
  @override
  RouteSettings? redirect(String? route){
    if(myVar == true) return const RouteSettings(name: "/super");
  }
}