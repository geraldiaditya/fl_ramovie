import 'package:ra_movie/src/domain/model/login_credentials.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';

class SignIn {
  final UserRepository _repository;

  SignIn(this._repository);

  Future<String> call(String username, String password) async {
    final res = await _repository.signIn(
      LoginCredentials(username: username, password: password),
    );
    return res;
  }
}
