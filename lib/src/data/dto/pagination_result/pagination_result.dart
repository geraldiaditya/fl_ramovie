import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_result.g.dart';

part 'pagination_result.freezed.dart';

@Freezed(genericArgumentFactories: true)
abstract class PaginationResult<T> with _$PaginationResult<T> {
  const factory PaginationResult.data({T? data}) = _PaginationResult;

  factory PaginationResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$PaginationResultFromJson(json, fromJsonT);
}
