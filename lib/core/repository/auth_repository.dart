import 'package:appoinx/core/model/user.dart';
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

  Future<User> register({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
    required String passwordConfirmation,
  }) async {
    final response = await _dio.post(
      "/auth/register",
      data: {
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "password": password,
        "passwordConfirmation": passwordConfirmation,
      },
    );

    final data = response.data;
    final user = User.fromJson(data["data"]);
    return user;
  }
}
