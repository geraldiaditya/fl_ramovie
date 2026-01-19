import 'package:ra_movie/src/domain/model/register_param.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';

class Register{

  Register(this._repository);
  final UserRepository _repository;

  Future<void> call(RegisterParam param){
    final res=_repository.signUp(param);
    return res;
  }
}