// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCategoryDto {

 int get id; String get name;
/// Create a copy of MovieCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCategoryDtoCopyWith<MovieCategoryDto> get copyWith => _$MovieCategoryDtoCopyWithImpl<MovieCategoryDto>(this as MovieCategoryDto, _$identity);

  /// Serializes this MovieCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MovieCategoryDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $MovieCategoryDtoCopyWith<$Res>  {
  factory $MovieCategoryDtoCopyWith(MovieCategoryDto value, $Res Function(MovieCategoryDto) _then) = _$MovieCategoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$MovieCategoryDtoCopyWithImpl<$Res>
    implements $MovieCategoryDtoCopyWith<$Res> {
  _$MovieCategoryDtoCopyWithImpl(this._self, this._then);

  final MovieCategoryDto _self;
  final $Res Function(MovieCategoryDto) _then;

/// Create a copy of MovieCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCategoryDto].
extension MovieCategoryDtoPatterns on MovieCategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieCategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCategoryDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _MovieCategoryDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _MovieCategoryDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieCategoryDto implements MovieCategoryDto {
  const _MovieCategoryDto({required this.id, required this.name});
  factory _MovieCategoryDto.fromJson(Map<String, dynamic> json) => _$MovieCategoryDtoFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of MovieCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCategoryDtoCopyWith<_MovieCategoryDto> get copyWith => __$MovieCategoryDtoCopyWithImpl<_MovieCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'MovieCategoryDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$MovieCategoryDtoCopyWith<$Res> implements $MovieCategoryDtoCopyWith<$Res> {
  factory _$MovieCategoryDtoCopyWith(_MovieCategoryDto value, $Res Function(_MovieCategoryDto) _then) = __$MovieCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$MovieCategoryDtoCopyWithImpl<$Res>
    implements _$MovieCategoryDtoCopyWith<$Res> {
  __$MovieCategoryDtoCopyWithImpl(this._self, this._then);

  final _MovieCategoryDto _self;
  final $Res Function(_MovieCategoryDto) _then;

/// Create a copy of MovieCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_MovieCategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
