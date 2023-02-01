import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:random_app/base/network/impl_dio.dart';
import 'package:random_app/controller/home_page_controller.dart';
import 'package:random_app/service/home_page_service.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController(HomePageService(ImplDio(Dio()))));
  }
}
