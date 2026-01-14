import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ra_movie/src/domain/model/register_param.dart';

part 'register_request_dto.g.dart';

part 'register_request_dto.freezed.dart';

@freezed
abstract class RegisterRequestDto with _$RegisterRequestDto {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegisterRequestDto({
    required String email,
    required String name,
    required String password,
    required String confirmPassword,
  }) = _RegisterRequestDto;

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);

  factory RegisterRequestDto.fromDomain(RegisterParam p) => RegisterRequestDto(
    email: p.email,
    name: p.fullName,
    password: p.password,
    confirmPassword: p.confirmPassword,
  );
}
