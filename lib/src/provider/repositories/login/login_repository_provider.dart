
import 'package:ra_movie/src/data/repositories/user_repository_impl.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';
import 'package:ra_movie/src/provider/network/network_providers.dart';
import 'package:ra_movie/src/provider/repositories/auth/auth_repository_provider/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_repository_provider.g.dart';

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(apiClient: ref.read(apiClientProvider), authRepository: ref.read(authRepositoryProvider));
}
