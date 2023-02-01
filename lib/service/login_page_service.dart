import 'package:get/get.dart';
import 'package:random_app/base/network/i_network_manager.dart';
import 'package:random_app/base/service/base_service.dart';

class LoginPageService extends BaseService {
  final INetworkManager _networkManager;

  LoginPageService(this._networkManager);
  Future<Response> login(String url, String email, String password) async {
    final res = await _networkManager.get(
      url: url,
    );

    return res;
  }
}
