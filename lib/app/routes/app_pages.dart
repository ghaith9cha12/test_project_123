import 'package:get/get.dart';
import 'package:test_project/app/pages/second%20screen.dart';
import 'package:test_project/app/pages/splash/views/splash.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FIRST_SCREEN;

  static final routes = [
    GetPage(name: _Paths.SPLASH, page: () => Splash_Screen(),),
    GetPage(name: _Paths.HOME_PAGE, page: () => SecondScreen()),
  ];
}
