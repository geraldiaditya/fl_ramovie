// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationResult<T> {

 T? get data;
/// Create a copy of PaginationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationResultCopyWith<T, PaginationResult<T>> get copyWith => _$PaginationResultCopyWithImpl<T, PaginationResult<T>>(this as PaginationResult<T>, _$identity);

  /// Serializes this PaginationResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationResult<T>&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PaginationResult<$T>(data: $data)';
}


}

/// @nodoc
abstract mixin class $PaginationResultCopyWith<T,$Res>  {
  factory $PaginationResultCopyWith(PaginationResult<T> value, $Res Function(PaginationResult<T>) _then) = _$PaginationResultCopyWithImpl;
@useResult
$Res call({
 T? data
});




}
/// @nodoc
class _$PaginationResultCopyWithImpl<T,$Res>
    implements $PaginationResultCopyWith<T, $Res> {
  _$PaginationResultCopyWithImpl(this._self, this._then);

  final PaginationResult<T> _self;
  final $Res Function(PaginationResult<T>) _then;

/// Create a copy of PaginationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationResult].
extension PaginationResultPatterns<T> on PaginationResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PaginationResult<T> value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationResult() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PaginationResult<T> value)  data,}){
final _that = this;
switch (_that) {
case _PaginationResult():
return data(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PaginationResult<T> value)?  data,}){
final _that = this;
switch (_that) {
case _PaginationResult() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? data)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationResult() when data != null:
return data(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? data)  data,}) {final _that = this;
switch (_that) {
case _PaginationResult():
return data(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? data)?  data,}) {final _that = this;
switch (_that) {
case _PaginationResult() when data != null:
return data(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PaginationResult<T> implements PaginationResult<T> {
  const _PaginationResult({this.data});
  factory _PaginationResult.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginationResultFromJson(json,fromJsonT);

@override final  T? data;

/// Create a copy of PaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationResultCopyWith<T, _PaginationResult<T>> get copyWith => __$PaginationResultCopyWithImpl<T, _PaginationResult<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginationResultToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationResult<T>&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PaginationResult<$T>.data(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PaginationResultCopyWith<T,$Res> implements $PaginationResultCopyWith<T, $Res> {
  factory _$PaginationResultCopyWith(_PaginationResult<T> value, $Res Function(_PaginationResult<T>) _then) = __$PaginationResultCopyWithImpl;
@override @useResult
$Res call({
 T? data
});




}
/// @nodoc
class __$PaginationResultCopyWithImpl<T,$Res>
    implements _$PaginationResultCopyWith<T, $Res> {
  __$PaginationResultCopyWithImpl(this._self, this._then);

  final _PaginationResult<T> _self;
  final $Res Function(_PaginationResult<T>) _then;

/// Create a copy of PaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_PaginationResult<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
