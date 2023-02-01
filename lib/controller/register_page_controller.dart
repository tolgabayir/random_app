import 'package:get/get.dart';
import 'package:random_app/base/controller/base_controller.dart';
import 'package:random_app/routes/routes.dart';
import 'package:random_app/service/register_page_service.dart';

class RegisterPageController extends BaseController {
  
  final RegisterPageService _registerPageService;
  late String name;
  late String surname;
  late String email;
  late String password;
  

  RegisterPageController(this._registerPageService);

  void nameChanged(String name) {
    this.name = name;
  }

  void surnameChanged(String surname) {
    this.surname = surname;
  }

  void emailChanged(String email) {
    this.email = email;
  }

  void passwordChanged(String password) {
    this.password = password;
  }
  void passwordRepeatCheck(String repeatPassword){
    
  }
  void onTapLoginButton() {
    Get.toNamed(Routes.LOGIN);
  }

  void register() async {
    try {
      final res = await _registerPageService.register(
          "url", name, surname, email, password);
    } catch (e) {
      e.toString();
    }
  }
}
