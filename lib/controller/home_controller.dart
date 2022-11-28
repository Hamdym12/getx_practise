import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt conuter = 0.obs;
  int conuter0 = 0;

  void increment(){
    conuter0++;
    update();
  }

  void decrement(){
    conuter0--;
    update();
  }

  // Controller's lifecycle
  @override
  void onInit() { // == initState
    print('onInit Home Controller');
    super.onInit();
  }

  @override
  void onReady() { // called after rendering widget(build done)
    print('onReady Home Controller');
    super.onReady();
  }

  @override
  void onClose() { // == dispose
    print('onClose Home Controller');
    super.onClose();
  }



}