import 'package:appoinx/core/routing/constants/app_route_names.dart';
import 'package:appoinx/core/services/secure_storage_service.dart';
import 'package:appoinx/core/utils/snackbar_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  DioClient._();

  static final Dio _dio =
      Dio(
          BaseOptions(
            baseUrl: 'http://localhost:3333/api',
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
            headers: {'Content-Type': 'application/json'},
          ),
        )
        ..interceptors.addAll([
          _authInterceptor(),
          _errorInterceptor(),
          if (kDebugMode) PrettyDioLogger(),
        ]);

  static Dio get instance => _dio;

  static Interceptor _errorInterceptor() {
    return InterceptorsWrapper(
      onError: (error, handler) {
        if (error.response?.statusCode == 401) {
          handler.next(error);
          return;
        }
        final data = error.response?.data;
        String? message;
        if (data is Map) {
          final errorBody = data['error'];
          if (errorBody is Map) {
            message = errorBody['message'] as String?;
          }
        }
        SnackbarUtils.showError(message ?? 'Something went wrong');
        handler.next(error);
      },
    );
  }

  static Interceptor _authInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await SecureStorageService.read(StorageKeys.accessToken);
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          await SecureStorageService.delete(StorageKeys.accessToken);
          Get.offAllNamed(AppRouteNames.signin);
        }
        handler.next(error);
      },
    );
  }
}
