import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:random_app/base/network/impl_dio.dart';
import 'package:random_app/controller/login_page_controller.dart';
import 'package:random_app/service/login_page_service.dart';

class LoginPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginPageController(LoginPageService(ImplDio(Dio()))));
  }
}
