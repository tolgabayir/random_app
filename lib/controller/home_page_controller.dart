import 'package:get/get.dart';
import 'package:random_app/base/controller/base_controller.dart';
import 'package:random_app/routes/routes.dart';
import 'package:random_app/service/home_page_service.dart';

class HomePageController extends BaseController {
  final HomePageService _homePageService;
  List list= [];
  

  
  
  HomePageController(this._homePageService);
  @override
  void onInit() {
    super.onInit();
    fetchHomePageUserList;
  }

  void get fetchHomePageUserList async {
    try {} catch (e) {
      e.toString();
    }
  }

  void onTapCreatedList() {
    Get.toNamed(
      Routes.LIST,
    );
  }

  void onTapCreateList() {
    Get.toNamed(Routes.LIST);
  }
}
