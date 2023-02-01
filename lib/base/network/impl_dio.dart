import 'package:dio/dio.dart';
import 'package:random_app/base/network/i_network_manager.dart';

class ImplDio implements INetworkManager {
  final Dio dio;

  ImplDio(this.dio);
  @override
  Future get({required String url, Map<String, dynamic>? queryParams}) async {
    final res = await dio.get(url, queryParameters: queryParams);
    return res.data;
  }

  @override
  Future post(
      {required String url,
      dynamic data,
      Map<String, dynamic>? queryParams}) async {
    final res = await dio.post(url, data: data, queryParameters: queryParams);
    return res.data;
  }
}
