import 'package:ra_movie/src/domain/model/login_credentials.dart';
import 'package:ra_movie/src/domain/model/register_param.dart';

abstract class UserRepository {
  Future<String> signIn(LoginCredentials data);

  Future<void> signUp(RegisterParam data);
}