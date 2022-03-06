import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/home/view/home_view.dart';
import 'product/theme/app_theme_light.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeLight.instance!.theme,
      home: HomeView(),
    );
  }
}
