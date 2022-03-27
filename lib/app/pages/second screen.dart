
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../../main/main_controller.dart';

class SecondScreen extends GetView {

  // final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(
        child: Text(
          "HELLO"
        ),
      ),),
    );
  }
}
