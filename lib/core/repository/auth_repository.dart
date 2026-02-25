import 'package:appoinx/core/services/dio_client.dart';

class AuthRepository {
  final _dio = DioClient.instance;

  Future<String> login({
    required String email,
    required String password,
  }) async {
    final response = await _dio.post(
      "/auth/login",
      data: {"email": email, "password": password},
    );
    final data = response.data;

    return data["data"]["token"] as String;
  }
}
