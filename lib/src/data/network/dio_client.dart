import 'package:dio/dio.dart';
import 'package:ra_movie/src/data/network/interceptors/error_interceptor.dart';
import 'env_config.dart';
import 'interceptors/auth_interceptor.dart';

Dio createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: EnvConfig.baseUrl,
      connectTimeout: const Duration(milliseconds: EnvConfig.connectTimeoutMs),
      receiveTimeout: const Duration(milliseconds: EnvConfig.receiveTimeoutMs),
      headers: const {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  // Interceptors
  dio.interceptors.add(AuthInterceptor());
  dio.interceptors.add(ErrorInterceptor());
  dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

  return dio;
}
