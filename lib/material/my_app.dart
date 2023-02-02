import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/routes/pages.dart';
import 'package:random_app/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.pages,
    );
  }
}
