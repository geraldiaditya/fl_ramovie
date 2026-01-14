import 'package:ra_movie/src/domain/model/register_param.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';

class Register{
  final UserRepository _repository;

  Register(this._repository);

  Future<void> call(RegisterParam param){
    final res=_repository.signUp(param);
    return res;
  }
}