import 'package:ra_movie/src/provider/repositories/auth/auth_repository_provider/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'splash_provider.g.dart';

@riverpod
class Splash extends _$Splash {
  @override
  Future<bool> build() async {
    final token=await ref.read(authRepositoryProvider).getToken();
    if(token!=null) {
      return true;
    }
    return false;
  }
}
