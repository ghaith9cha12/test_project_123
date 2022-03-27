import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:test_project/app/pages/second%20screen.dart';


class SplashController extends GetxController{
final bottomWidgets=[
  'TERM OF USE',
  'CONTACT',
  'CAREER',
  'AREA RANGE',
];
final users=[
  '@_User1',
  '@_User2',
  '@_User3',
  '@_User4',
  '@_User5',
  '@_User6',
];
final categories=[
  '     Main \nCategory 1',
  '     Main \nCategory 2',
  '     Main \nCategory 3',
  '     Main \nCategory 4',
  '     Main \nCategory 5',
  '     Main \nCategory 6',
];
final headerTitles=[
  'HEAD TITLE1',
  'HEAD TITLE2',
  'HEAD TITLE3',
  'HEAD TITLE4',
];


  @override
  void onInit() {
    // getReady();
    super.onInit();
  }

  getReady(){
    Timer(const Duration(seconds: 2), () => Get.off(() =>SecondScreen()));
  }


}