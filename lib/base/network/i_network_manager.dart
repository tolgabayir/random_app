mixin INetworkManager {
  Future<dynamic> get({required String url, Map<String, dynamic>? queryParams});
  Future<dynamic> post(
      {required String url, dynamic data, Map<String, dynamic>? queryParams});
}