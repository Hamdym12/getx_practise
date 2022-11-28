import 'package:flutter/material.dart';
import 'package:getx_practise/view/test_route_getx/test.dart';
import 'package:get/get.dart';
import '../../controller/home_controller.dart';

class Test2Screen extends StatelessWidget {
   Test2Screen({Key? key}) : super(key: key);

   HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan)
                ),
                onPressed: (){
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=>const TestScreen()));
                  // ==
                  Get.to(()=>  TestScreen());
                  //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const TestScreen()));
                  // ==
                  // Get.off(const TestScreen());
                  //Navigator.maybePop == Get.back();
                  //Navigator.pushAndRemoveUntil == Get.offAll(TestScreen());
                  ///

                },
                child: const Text(
                    'Go to Test 1 Screen'
                )
            ),
            Center(
              child:  GetBuilder<HomeController>(
                builder:(controller)=>Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add,size: 30,),
                      onPressed: (){
                        controller.increment();
                      },
                    ),
                   Text(
                        '${controller.conuter0}',
                        style: const TextStyle(
                            fontSize: 16
                        ),
                      ),

                    IconButton(
                      icon: const Icon(Icons.remove,size: 30,),
                      onPressed: (){
                        controller.decrement();
                      },
                    ),
                  ],
                ) ,

              ),
            )
          ],
        ),
      ),

    );
  }
}
