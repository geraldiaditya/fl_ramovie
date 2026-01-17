// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BrandResponseDto {

 List<String> get brands;
/// Create a copy of BrandResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandResponseDtoCopyWith<BrandResponseDto> get copyWith => _$BrandResponseDtoCopyWithImpl<BrandResponseDto>(this as BrandResponseDto, _$identity);

  /// Serializes this BrandResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BrandResponseDto&&const DeepCollectionEquality().equals(other.brands, brands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(brands));

@override
String toString() {
  return 'BrandResponseDto(brands: $brands)';
}


}

/// @nodoc
abstract mixin class $BrandResponseDtoCopyWith<$Res>  {
  factory $BrandResponseDtoCopyWith(BrandResponseDto value, $Res Function(BrandResponseDto) _then) = _$BrandResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<String> brands
});




}
/// @nodoc
class _$BrandResponseDtoCopyWithImpl<$Res>
    implements $BrandResponseDtoCopyWith<$Res> {
  _$BrandResponseDtoCopyWithImpl(this._self, this._then);

  final BrandResponseDto _self;
  final $Res Function(BrandResponseDto) _then;

/// Create a copy of BrandResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brands = null,}) {
  return _then(_self.copyWith(
brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BrandResponseDto].
extension BrandResponseDtoPatterns on BrandResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BrandResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BrandResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BrandResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BrandResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BrandResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BrandResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> brands)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BrandResponseDto() when $default != null:
return $default(_that.brands);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> brands)  $default,) {final _that = this;
switch (_that) {
case _BrandResponseDto():
return $default(_that.brands);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> brands)?  $default,) {final _that = this;
switch (_that) {
case _BrandResponseDto() when $default != null:
return $default(_that.brands);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BrandResponseDto implements BrandResponseDto {
  const _BrandResponseDto({final  List<String> brands = const []}): _brands = brands;
  factory _BrandResponseDto.fromJson(Map<String, dynamic> json) => _$BrandResponseDtoFromJson(json);

 final  List<String> _brands;
@override@JsonKey() List<String> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}


/// Create a copy of BrandResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandResponseDtoCopyWith<_BrandResponseDto> get copyWith => __$BrandResponseDtoCopyWithImpl<_BrandResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BrandResponseDto&&const DeepCollectionEquality().equals(other._brands, _brands));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_brands));

@override
String toString() {
  return 'BrandResponseDto(brands: $brands)';
}


}

/// @nodoc
abstract mixin class _$BrandResponseDtoCopyWith<$Res> implements $BrandResponseDtoCopyWith<$Res> {
  factory _$BrandResponseDtoCopyWith(_BrandResponseDto value, $Res Function(_BrandResponseDto) _then) = __$BrandResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> brands
});




}
/// @nodoc
class __$BrandResponseDtoCopyWithImpl<$Res>
    implements _$BrandResponseDtoCopyWith<$Res> {
  __$BrandResponseDtoCopyWithImpl(this._self, this._then);

  final _BrandResponseDto _self;
  final $Res Function(_BrandResponseDto) _then;

/// Create a copy of BrandResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = null,}) {
  return _then(_BrandResponseDto(
brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
