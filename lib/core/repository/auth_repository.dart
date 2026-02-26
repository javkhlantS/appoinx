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

  Future<dynamic> forgotPassword({required String email}) async {
    final response = await _dio.post(
      "/auth/forgot-password",
      data: {"email": email},
    );

    final data = response.data;
    return data;
  }

  Future<String> verifyOtp({required String email, required String otp}) async {
    final response = await _dio.post(
      "/auth/verify-otp",
      data: {
        "email": email,
        "otp": otp,
      },
    );

    final data = response.data;
    return data["data"]["resetToken"];
  }

  Future<void> resetPassword({
    required String resetToken,
    required String password,
    required String passwordConfirmation,
  }) async {
    await _dio.post(
      "/auth/reset-password",
      data: {
        "resetToken": resetToken,
        "password": password,
        "passwordConfirmation": passwordConfirmation,
      },
    );
  }

  Future<dynamic> resendOtp({required String email}) async {
    final response = await _dio.post(
      "/auth/resend-otp",
      data: {"email": email},
    );

    final data = response.data;
    return data;
  }

  Future<User> me() async {
    final response = await _dio.get("/auth/me");
    final data = response.data;

    return User.fromJson(data["data"]);
  }
}
