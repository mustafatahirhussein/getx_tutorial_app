import 'package:get/get.dart';
import 'package:getx_tutorial_app/view/countries_view.dart';
import 'package:getx_tutorial_app/view/splash_view.dart';

class AppRoutes {

  static getRoutes() => [
    GetPage(
      name: '/',
      page: () => SplashView(),
    ),
    GetPage(
      name: '/countries',
      page: () => CountriesView(),
    ),
  ];
}