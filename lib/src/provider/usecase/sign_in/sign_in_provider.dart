
import 'package:ra_movie/src/domain/usecase/sign_in.dart';
import 'package:ra_movie/src/provider/repositories/login/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_provider.g.dart';

@riverpod
SignIn signIn(Ref ref) {
  return SignIn(ref.read(userRepositoryProvider));
}
