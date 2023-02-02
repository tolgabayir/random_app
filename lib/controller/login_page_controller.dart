import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:random_app/base/controller/base_controller.dart';
import 'package:random_app/routes/routes.dart';
import 'package:random_app/service/login_page_service.dart';

class LoginPageController extends BaseController {
  final LoginPageService _loginPageService;
  late String email;
  late String password;
  final box = GetStorage();

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
      if (res == "ok") {
        box.write("email", email);
      }
    } catch (e) {
      e.toString();
    }
  }
}
