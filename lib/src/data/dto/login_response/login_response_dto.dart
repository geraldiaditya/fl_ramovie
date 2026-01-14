import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ra_movie/src/data/dto/user_response/user_response_dto.dart';

part 'login_response_dto.freezed.dart';

part 'login_response_dto.g.dart';

@freezed
abstract class LoginResponseDto with _$LoginResponseDto {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginResponseDto({
    required String token,
    required UserResponseDto user,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
