import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_practise/main.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(
                   onPressed: (){
                     sharedPref!.setString("id", "1");
                     Get.offAllNamed("/home");
                   },
                 child: const Text(
                   "log in"
                 ),
               )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
