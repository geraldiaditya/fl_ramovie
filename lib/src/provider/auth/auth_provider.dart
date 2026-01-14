import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ra_movie/src/provider/repositories/auth/auth_repository_provider/auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class IsAuth extends _$IsAuth {
  @override
  Future<bool> build() async{
    final token= await ref.read(authRepositoryProvider).getToken();
    if(token!=null) {
      return true;
    }
    return false;
  }

  void doLogin() {
    state = AsyncValue.data(true);
  }

  Future<void> doLogout() async{
    await ref.read(authRepositoryProvider).deleteToken();
    state = AsyncValue.data(false);
  }
}
