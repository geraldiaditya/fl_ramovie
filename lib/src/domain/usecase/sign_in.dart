import 'package:ra_movie/src/domain/model/login_credentials.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';

class SignIn {

  SignIn(this._repository);
  final UserRepository _repository;

  Future<String> call(String username, String password) async {
    final res = await _repository.signIn(
      LoginCredentials(username: username, password: password),
    );
    return res;
  }
}
