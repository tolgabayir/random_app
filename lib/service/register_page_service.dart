import 'package:get/get.dart';
import 'package:random_app/base/network/i_network_manager.dart';
import 'package:random_app/base/service/base_service.dart';
import 'package:random_app/model/user.dart';

class RegisterPageService extends BaseService {
  final INetworkManager _networkManager;

  RegisterPageService(this._networkManager);
  Future<Response<User>> register(String url, String name, String surname,
      String email, String password) async {
    final res = await _networkManager.post(url: url, data: {
      "name": name,
      "surname": surname,
      "email": email,
      "password": password
    });

    return res;
  }
}
