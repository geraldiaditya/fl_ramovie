// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BannerDto {

 int get movieId; String get title; String get posterUrl; double get rating; List<String> get genres;
/// Create a copy of BannerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerDtoCopyWith<BannerDto> get copyWith => _$BannerDtoCopyWithImpl<BannerDto>(this as BannerDto, _$identity);

  /// Serializes this BannerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerDto&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.genres, genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,movieId,title,posterUrl,rating,const DeepCollectionEquality().hash(genres));

@override
String toString() {
  return 'BannerDto(movieId: $movieId, title: $title, posterUrl: $posterUrl, rating: $rating, genres: $genres)';
}


}

/// @nodoc
abstract mixin class $BannerDtoCopyWith<$Res>  {
  factory $BannerDtoCopyWith(BannerDto value, $Res Function(BannerDto) _then) = _$BannerDtoCopyWithImpl;
@useResult
$Res call({
 int movieId, String title, String posterUrl, double rating, List<String> genres
});




}
/// @nodoc
class _$BannerDtoCopyWithImpl<$Res>
    implements $BannerDtoCopyWith<$Res> {
  _$BannerDtoCopyWithImpl(this._self, this._then);

  final BannerDto _self;
  final $Res Function(BannerDto) _then;

/// Create a copy of BannerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,Object? title = null,Object? posterUrl = null,Object? rating = null,Object? genres = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerDto].
extension BannerDtoPatterns on BannerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerDto value)  $default,){
final _that = this;
switch (_that) {
case _BannerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerDto value)?  $default,){
final _that = this;
switch (_that) {
case _BannerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int movieId,  String title,  String posterUrl,  double rating,  List<String> genres)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerDto() when $default != null:
return $default(_that.movieId,_that.title,_that.posterUrl,_that.rating,_that.genres);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int movieId,  String title,  String posterUrl,  double rating,  List<String> genres)  $default,) {final _that = this;
switch (_that) {
case _BannerDto():
return $default(_that.movieId,_that.title,_that.posterUrl,_that.rating,_that.genres);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int movieId,  String title,  String posterUrl,  double rating,  List<String> genres)?  $default,) {final _that = this;
switch (_that) {
case _BannerDto() when $default != null:
return $default(_that.movieId,_that.title,_that.posterUrl,_that.rating,_that.genres);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BannerDto implements BannerDto {
  const _BannerDto({required this.movieId, required this.title, required this.posterUrl, required this.rating, final  List<String> genres = const []}): _genres = genres;
  factory _BannerDto.fromJson(Map<String, dynamic> json) => _$BannerDtoFromJson(json);

@override final  int movieId;
@override final  String title;
@override final  String posterUrl;
@override final  double rating;
 final  List<String> _genres;
@override@JsonKey() List<String> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}


/// Create a copy of BannerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerDtoCopyWith<_BannerDto> get copyWith => __$BannerDtoCopyWithImpl<_BannerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BannerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerDto&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._genres, _genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,movieId,title,posterUrl,rating,const DeepCollectionEquality().hash(_genres));

@override
String toString() {
  return 'BannerDto(movieId: $movieId, title: $title, posterUrl: $posterUrl, rating: $rating, genres: $genres)';
}


}

/// @nodoc
abstract mixin class _$BannerDtoCopyWith<$Res> implements $BannerDtoCopyWith<$Res> {
  factory _$BannerDtoCopyWith(_BannerDto value, $Res Function(_BannerDto) _then) = __$BannerDtoCopyWithImpl;
@override @useResult
$Res call({
 int movieId, String title, String posterUrl, double rating, List<String> genres
});




}
/// @nodoc
class __$BannerDtoCopyWithImpl<$Res>
    implements _$BannerDtoCopyWith<$Res> {
  __$BannerDtoCopyWithImpl(this._self, this._then);

  final _BannerDto _self;
  final $Res Function(_BannerDto) _then;

/// Create a copy of BannerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,Object? title = null,Object? posterUrl = null,Object? rating = null,Object? genres = null,}) {
  return _then(_BannerDto(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
