import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_dto.g.dart';

part 'user_response_dto.freezed.dart';

@freezed
abstract class UserResponseDto with _$UserResponseDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserResponseDto({
    required int id,
    required String name,
    required String email,
  }) = _UserResponseDto;

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);
}
