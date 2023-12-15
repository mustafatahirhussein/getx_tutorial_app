import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_app/res/route_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.getRoutes(),
      initialRoute: '/',
    );
  }
}
