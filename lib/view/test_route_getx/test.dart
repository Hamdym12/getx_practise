import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/controller/test_controller.dart';
import 'package:getx_practise/utils/bindings.dart';
import 'package:getx_practise/view/home/home_screen.dart';

import '../../controller/home_controller.dart';

class TestScreen extends StatelessWidget {
    TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TestController controller = Get.put(TestController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${controller.name}"),
          Text("${controller.age}"),
          Text("The previous route is ${controller.preRoute}"),
          Text("The current route is ${controller.currentRoute}"),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan)
              ),
                onPressed: (){
                  Get.toNamed("/test2");
                },
                child: const Text(
                    'Go to Test 2 Screen'
                )
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan)
              ),
                onPressed: (){
                  Get.to(()=>Home());
                },
                child: const Text(
                    'Go to Home'
                )
            ),
          ),
        ],
      ),

    );
  }
}
