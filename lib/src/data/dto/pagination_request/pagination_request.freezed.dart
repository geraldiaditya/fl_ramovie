// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationRequest {

 int get page; int get limit;
/// Create a copy of PaginationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationRequestCopyWith<PaginationRequest> get copyWith => _$PaginationRequestCopyWithImpl<PaginationRequest>(this as PaginationRequest, _$identity);

  /// Serializes this PaginationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'PaginationRequest(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $PaginationRequestCopyWith<$Res>  {
  factory $PaginationRequestCopyWith(PaginationRequest value, $Res Function(PaginationRequest) _then) = _$PaginationRequestCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$PaginationRequestCopyWithImpl<$Res>
    implements $PaginationRequestCopyWith<$Res> {
  _$PaginationRequestCopyWithImpl(this._self, this._then);

  final PaginationRequest _self;
  final $Res Function(PaginationRequest) _then;

/// Create a copy of PaginationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationRequest].
extension PaginationRequestPatterns on PaginationRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationRequest value)  $default,){
final _that = this;
switch (_that) {
case _PaginationRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationRequest() when $default != null:
return $default(_that.page,_that.limit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit)  $default,) {final _that = this;
switch (_that) {
case _PaginationRequest():
return $default(_that.page,_that.limit);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _PaginationRequest() when $default != null:
return $default(_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationRequest implements PaginationRequest {
  const _PaginationRequest({required this.page, required this.limit});
  factory _PaginationRequest.fromJson(Map<String, dynamic> json) => _$PaginationRequestFromJson(json);

@override final  int page;
@override final  int limit;

/// Create a copy of PaginationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationRequestCopyWith<_PaginationRequest> get copyWith => __$PaginationRequestCopyWithImpl<_PaginationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'PaginationRequest(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$PaginationRequestCopyWith<$Res> implements $PaginationRequestCopyWith<$Res> {
  factory _$PaginationRequestCopyWith(_PaginationRequest value, $Res Function(_PaginationRequest) _then) = __$PaginationRequestCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$PaginationRequestCopyWithImpl<$Res>
    implements _$PaginationRequestCopyWith<$Res> {
  __$PaginationRequestCopyWithImpl(this._self, this._then);

  final _PaginationRequest _self;
  final $Res Function(_PaginationRequest) _then;

/// Create a copy of PaginationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_PaginationRequest(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
