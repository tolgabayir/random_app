import 'package:get/get.dart';
import 'package:random_app/binding/home_page_binding.dart';
import 'package:random_app/binding/login_page_binding.dart';
import 'package:random_app/binding/register_page_binding.dart';
import 'package:random_app/binding/splash_page_binding.dart';
import 'package:random_app/routes/routes.dart';
import 'package:random_app/view/home/home_page.dart';
import 'package:random_app/view/splash/splash_page.dart';
import 'package:random_app/view/list/list_page.dart';
import 'package:random_app/view/login/login_page.dart';
import 'package:random_app/view/register/register_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const SplashPage(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: Routes.LIST,
      page: () => const ListPage(),
    ),
  ];
}
