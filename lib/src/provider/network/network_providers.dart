import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ra_movie/src/data/network/dio_client.dart';
import 'package:ra_movie/src/data/network/retrofit/api_client.dart';

part 'network_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) => createDio();

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  final d = ref.watch(dioProvider);
  return ApiClient(d);
}
