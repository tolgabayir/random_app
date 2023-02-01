import 'package:random_app/base/network/i_network_manager.dart';
import 'package:random_app/base/service/base_service.dart';
import 'package:random_app/config/end_points.dart';

class HomePageService extends BaseService {
  final INetworkManager _networkManager;

  HomePageService(this._networkManager);

  getCreatedList() async {
    final res = await _networkManager.post(url: EndPoints.LISTS);
  }
}
