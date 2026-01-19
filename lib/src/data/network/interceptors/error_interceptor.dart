import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Kita ubah error menjadi pesan yang lebih ramah
    String readableMessage = '';

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        readableMessage = "Koneksi habis waktu (RTO). Silakan coba lagi.";
      case DioExceptionType.badResponse:
        readableMessage = _handleBadResponse(err.response);
      case DioExceptionType.cancel:
        readableMessage = "Permintaan dibatalkan oleh pengguna.";
      case DioExceptionType.connectionError:
        readableMessage =
            "Tidak ada koneksi internet. Periksa wifi/data seluler Anda.";
      default:
        readableMessage =
            "Terjadi kesalahan yang tidak diketahui. Silakan hubungi admin.";
    }

    // Kita ganti error asli dengan error custom yang berisi pesan readable
    // Menggunakan class DioException dengan pesan yang sudah dimodifikasi
    final customError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: readableMessage, // Pesan error 'manusia' disimpan di sini
    );

    return handler.next(customError);
  }

  // Fungsi helper untuk menangani status code dari server
  String _handleBadResponse(Response? response) {
    if (response == null) return "Terjadi kesalahan pada server.";

    final int statusCode = response.statusCode ?? 0;

    // Cek apakah server mengirim pesan error spesifik di body response
    // Contoh format JSON backend: { "errror": "Email sudah terdaftar" }
    try {
      if (response.data is Map && response.data['error'] != null) {
        return response.data['error'].toString();
      }
    } catch (_) {}

    // Jika tidak ada pesan spesifik dari backend, gunakan status code
    switch (statusCode) {
      case 400:
        return "Permintaan buruk (Bad Request). Cek input data Anda.";
      case 401:
        return "Sesi berakhir. Silakan login kembali.";
      case 403:
        return "Anda tidak memiliki akses untuk fitur ini.";
      case 404:
        return "Data tidak ditemukan.";
      case 405:
        return "Metode akses tidak diizinkan.";
      case 500:
      case 502:
      case 503:
        return "Server sedang bermasalah. Silakan coba beberapa saat lagi.";
      default:
        return "Terjadi kesalahan ($statusCode).";
    }
  }
}
