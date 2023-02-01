import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:random_app/base/controller/base_controller.dart';
import 'package:random_app/routes/routes.dart';
import 'package:random_app/service/login_page_service.dart';

class LoginPageController extends BaseController {
  final LoginPageService _loginPageService;
  late String email;
  late String password;

  LoginPageController(this._loginPageService);

  void emailChanged(String email) {
    this.email = email;
  }

  void emailValidator(FormFieldValidator<String>? value) {}

  void passwordChanged(String password) {
    this.password = password;
  }

  void onTapRegisterButton() {
    Get.toNamed(Routes.REGISTER);
  }

  void login() async {
    try {
      final res =
          await _loginPageService.login("192.168.0.12/name", email, password);
    } catch (e) {
      e.toString();
    }
  }
}
