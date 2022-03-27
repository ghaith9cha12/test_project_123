import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/routes/app_pages.dart';
import 'app/utilites/messages.dart';

void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        translations: Messages(),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        // initialBinding: MainBinding(),
      ));}