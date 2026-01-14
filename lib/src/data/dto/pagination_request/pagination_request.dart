import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_request.freezed.dart';

part 'pagination_request.g.dart';

@freezed
abstract class PaginationRequest with _$PaginationRequest {
  const factory PaginationRequest({required int page, required int limit}) =
      _PaginationRequest;

  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);
}
