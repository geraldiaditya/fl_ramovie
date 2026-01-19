import 'package:dio/dio.dart';

/// Simple AuthInterceptor example.
/// Replace the token retrieval with your own secure storage/provider integration.
class AuthInterceptor extends Interceptor {

  AuthInterceptor({Future<String?> Function()? getTokenAsync})
      : _getTokenAsync = getTokenAsync;
  final Future<String?> Function()? _getTokenAsync;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      // TODO: Integrate with your auth/token storage (e.g. flutter_secure_storage or Riverpod provider)
      final token = await (_getTokenAsync?.call() ?? Future.value(null));
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    } catch (_) {
      // ignore token errors; proceed without auth header
    }
    super.onRequest(options, handler);
  }

  // You can also override onError to handle token refresh if needed.
}
