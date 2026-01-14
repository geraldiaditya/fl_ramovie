

abstract class AuthRepository {
  Future<void> saveToken(String token);

  Future<void> deleteToken();

  Future<String?> getToken();
}
