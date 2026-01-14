import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ra_movie/src/data/repositories/auth_repository_impl.dart';
import 'package:ra_movie/src/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(FlutterSecureStorage());
}
