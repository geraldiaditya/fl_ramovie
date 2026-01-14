import 'package:ra_movie/src/data/dto/login_request/login_request_dto.dart';
import 'package:ra_movie/src/data/dto/login_response/login_response_dto.dart';
import 'package:ra_movie/src/data/dto/register_request/register_request_dto.dart';
import 'package:ra_movie/src/data/network/retrofit/api_client.dart';
import 'package:ra_movie/src/domain/model/login_credentials.dart';
import 'package:ra_movie/src/domain/model/register_param.dart';
import 'package:ra_movie/src/domain/repositories/auth_repository.dart';
import 'package:ra_movie/src/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final AuthRepository _authRepository;
  final ApiClient _apiClient;

  UserRepositoryImpl({
    required AuthRepository authRepository,
    required ApiClient apiClient,
  }) : _authRepository = authRepository,
       _apiClient = apiClient;

  @override
  Future<String> signIn(LoginCredentials data) async {
    LoginRequestDto dto = LoginRequestDto(
      password: data.password,
      email: data.username,
    );
    try {
      final res = await _apiClient.login(dto);
      await _authRepository.saveToken(res.token);
      return res.token;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signUp(RegisterParam data) async {
    final dto = RegisterRequestDto.fromDomain(data);
    try {
      final res = await _apiClient.register(dto);
      return res;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
