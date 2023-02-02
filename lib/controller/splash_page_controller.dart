import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:random_app/base/controller/base_controller.dart';
import 'package:random_app/routes/Routes.dart';
import 'package:random_app/service/splash_page_service.dart';

class SplashPageController extends BaseController {
  SplashPageController(SplashPageService splashPageService);

  @override
  void onReady() {
    super.onReady();
    navigateApp();
  }

  Future<void> navigateApp() async {
    final box = GetStorage();
    final myEmail = await box.read("email");

    if (myEmail != null) {
      Future.delayed(const Duration(seconds: 2), (() {
        Get.offAllNamed(Routes.HOME);
      }));
    } else {
      Future.delayed(const Duration(seconds: 2), (() {
        Get.offAllNamed(Routes.LOGIN);
      }));
    }
  }
}
