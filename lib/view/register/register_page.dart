import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_app/base/widget/text_form_widget.dart';
import 'package:random_app/controller/register_page_controller.dart';

class RegisterPage extends GetView<RegisterPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormWidget(
              name: "Ad",
              onChanged: controller.nameChanged,
            ),
            TextFormWidget(
              name: "Soyad",
              onChanged: controller.surnameChanged,
            ),
            TextFormWidget(
              name: "Email",
              onChanged: controller.emailChanged,
            ),
            TextFormWidget(
              name: "Şifre",
              onChanged: controller.passwordChanged,
            ),
            TextFormWidget(
              name: "Şifre Tekrar",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Hesabın var mı?"),
                TextButton(
                  onPressed: controller.onTapLoginButton,
                  child: const Text("Giriş Yap"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: controller.register,
              child: const Text("Kaydol"),
            ),
          ],
        ),
      ),
    );
  }
}
