import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'package:random_app/controller/splash_page_controller.dart';
import 'package:random_app/base/network/impl_dio.dart';
import '../service/splash_page_service.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashPageController(SplashPageService(ImplDio(Dio()))));
  }
}
