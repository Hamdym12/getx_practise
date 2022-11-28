import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practise/controller/home_controller.dart';
import 'package:getx_practise/locale/locale_controller.dart';
import 'package:getx_practise/services/setting_services.dart';

import '../../main.dart';

class Home extends GetView<SettingServices> {
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Getx
          /*  // Center(
            //   child: GetX<HomeController>(
            //       init: HomeController(),
            //       builder: (controller)=>
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           IconButton(
            //             icon: const Icon(Icons.add,size: 30,),
            //             onPressed: (){
            //               controller.increment();
            //             },
            //           ),
            //            Text(
            //             '${controller.conuter.value}',
            //             style: const TextStyle(
            //                 fontSize: 16
            //             ),
            //           ),
            //           IconButton(
            //             icon: const Icon(Icons.remove,size: 30,),
            //             onPressed: (){
            //               controller.decrement();
            //             },
            //           ),
            //         ],
            //       )
            //   ),
            // ),*/
            Center(
              child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add,size: 30,),
                      onPressed: (){
                        controller.increase();
                      },
                    ),
                    GetX<SettingServices>(
                      builder: (c)=>Text(
                        '${c.counter}',
                        style: const TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),

                  ],
                ),
            ),
            MaterialButton(
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: (){
               if(Get.isDarkMode){
                 Get.changeTheme(Themes.customLightTheme);
               }else{
                 Get.changeTheme(Themes.customDarkTheme);
               }
              },
              child: const Text("Change Theme"),
            ),
            ElevatedButton(
              onPressed: (){
                controller.sharedPref!.clear();
              },
              child: const Text(
                  "Clear shared pref"
              ),
            ),
            ElevatedButton(
              onPressed: (){
                sharedPref!.clear();
                Get.offAllNamed("/login");
              },
              child: const Text(
                  "Sign out"
              ),
            ),
            ElevatedButton(
              onPressed: (){
                controllerLang.changeLang("ar");
              },
              child:  Text(
                  "2".tr
              ),
            ),
            ElevatedButton(
              onPressed: (){
                controllerLang.changeLang("en");
              },
              child:  Text(
                  "3".tr
              ),
            ),
            ElevatedButton(
              child:  const Text(
                  "Show Dialog"
              ),
              onPressed: (){
                Get.defaultDialog(
                  title: "Alert",
                  content: Column(
                    children: [
                      const Text(
                        "Enter user name"
                      ),
                      TextFormField()
                    ],
                  ),
                  middleTextStyle: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.redAccent
                  ),
                cancel: RawMaterialButton(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),
                  ),
                  onPressed: (){},
                ),
                  confirm: RawMaterialButton(
                    child: const Text(
                      'Confirm',
                      style:  TextStyle(fontWeight: FontWeight.w700,fontSize: 15),
                    ),
                    onPressed: (){},
                  ),
                 textConfirm: "Confirm",
                );
              },
            ),
            ElevatedButton(
              child:  const Text(
                  "Show SnackBar"
              ),
              onPressed: (){
                Get.snackbar(
                    "SnackBar",
                    "hello, world",
                  duration: const Duration(seconds: 2),
                  titleText: const Text("Hello",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white),
                    textAlign: TextAlign.center,),
                  messageText: const Text("This is snackBar",style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w600, color: Colors.white),
                    textAlign: TextAlign.center,),
                  snackPosition: SnackPosition.TOP,
                  margin: const EdgeInsets.only(top: 5),
                  backgroundColor: Colors.black54
                    ,colorText: Colors.white,
                  borderWidth: 2,
                  maxWidth: MediaQuery.of(context).size.width *.93,
                  borderRadius: 15,
                  padding:const EdgeInsets.symmetric(vertical: 5)
                );
              },
            ),
            ElevatedButton(
              child:  const Text(
                  "Show BottomSheet"
              ),
              onPressed: (){
                Get.bottomSheet(
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                        borderRadius:  BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18))
                      ),
                      height: 200,
                      child: const Text("Bottom Sheet",textAlign: TextAlign.center,),
                ),
                  enterBottomSheetDuration: const Duration(milliseconds: 800),
                  exitBottomSheetDuration: const Duration(milliseconds: 500),
                  isDismissible: true,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueAccent,width: 1.3),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18))
                  )
                  // persistent: true
                );
              },
            ),
            ElevatedButton(
              child:  const Text(
                  "GetX Services"
              ),
              onPressed: (){
                Get.toNamed("/test1",arguments: {
                  "name" : "Hamdy",
                  "age" : "25",
                });
              },
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(Get.isSnackbarOpen);
                },
              child: const Text("Check if snackBar is opened"),
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(GetPlatform.isAndroid);
                },
              child: const Text("Check platform"),
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(Get.height);
                },
              child: const Text("Screen Height"),
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(Get.width);
                },
              child: const Text("Screen Width"),
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(context.isPortrait);
                },
              child: const Text("is Portrait"),
            ),
            MaterialButton(
              color: Colors.cyan,
                textColor: Colors.white,
                onPressed: (){
                  print(context.isLandscape);
                },
              child: const Text("is Landscape"),
            ),
          ],
        ),
      ),
    );
  }
}
