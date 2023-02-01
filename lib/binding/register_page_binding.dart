import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:random_app/base/network/impl_dio.dart';
import 'package:random_app/controller/register_page_controller.dart';
import 'package:random_app/service/register_page_service.dart';

class RegisterPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => RegisterPageController(RegisterPageService(ImplDio(Dio()))));
  }
}
