import 'package:ra_movie/src/domain/usecase/register.dart';
import 'package:ra_movie/src/provider/repositories/login/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'register_provider.g.dart';

@riverpod
Register register(Ref ref) {
  return Register(ref.read(userRepositoryProvider));
}
