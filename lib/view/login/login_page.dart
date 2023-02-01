import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/base/widget/text_form_widget.dart';
import 'package:random_app/controller/login_page_controller.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormWidget(
              name: "Email",
              onChanged: controller.emailChanged,
            ),
            TextFormWidget(
              name: "Şifre",
              onChanged: controller.passwordChanged,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Hesabın yok mu?"),
                TextButton(
                  onPressed: controller.onTapRegisterButton,
                  child: const Text("Kaydol"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: controller.login,
              child: const Text("Giriş Yap"),
            ),
            
          ],
        ),
      ),
    );
  }
}
