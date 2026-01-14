import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ra_movie/src/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FlutterSecureStorage _secureStorage;

  AuthRepositoryImpl(this._secureStorage);

  static final String _keyToken = 'token';

  @override
  Future<void> saveToken(String token) {
    return _secureStorage.write(key: _keyToken, value: token);
  }

  @override
  Future<void> deleteToken() {
    return _secureStorage.delete(key: _keyToken);
  }

  @override
  Future<String?> getToken() {
    return _secureStorage.read(key: _keyToken);
  }
}
