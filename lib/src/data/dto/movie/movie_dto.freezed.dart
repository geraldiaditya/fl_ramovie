// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDto {

 int get id; String get title; int get duration; double get rating; String get posterUrl; List<String> get genres;
/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDtoCopyWith<MovieDto> get copyWith => _$MovieDtoCopyWithImpl<MovieDto>(this as MovieDto, _$identity);

  /// Serializes this MovieDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&const DeepCollectionEquality().equals(other.genres, genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,duration,rating,posterUrl,const DeepCollectionEquality().hash(genres));

@override
String toString() {
  return 'MovieDto(id: $id, title: $title, duration: $duration, rating: $rating, posterUrl: $posterUrl, genres: $genres)';
}


}

/// @nodoc
abstract mixin class $MovieDtoCopyWith<$Res>  {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) _then) = _$MovieDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, int duration, double rating, String posterUrl, List<String> genres
});




}
/// @nodoc
class _$MovieDtoCopyWithImpl<$Res>
    implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._self, this._then);

  final MovieDto _self;
  final $Res Function(MovieDto) _then;

/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? rating = null,Object? posterUrl = null,Object? genres = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDto].
extension MovieDtoPatterns on MovieDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  int duration,  double rating,  String posterUrl,  List<String> genres)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.rating,_that.posterUrl,_that.genres);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  int duration,  double rating,  String posterUrl,  List<String> genres)  $default,) {final _that = this;
switch (_that) {
case _MovieDto():
return $default(_that.id,_that.title,_that.duration,_that.rating,_that.posterUrl,_that.genres);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  int duration,  double rating,  String posterUrl,  List<String> genres)?  $default,) {final _that = this;
switch (_that) {
case _MovieDto() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.rating,_that.posterUrl,_that.genres);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDto implements MovieDto {
  const _MovieDto({required this.id, required this.title, required this.duration, required this.rating, required this.posterUrl, required final  List<String> genres}): _genres = genres;
  factory _MovieDto.fromJson(Map<String, dynamic> json) => _$MovieDtoFromJson(json);

@override final  int id;
@override final  String title;
@override final  int duration;
@override final  double rating;
@override final  String posterUrl;
 final  List<String> _genres;
@override List<String> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}


/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDtoCopyWith<_MovieDto> get copyWith => __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&const DeepCollectionEquality().equals(other._genres, _genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,duration,rating,posterUrl,const DeepCollectionEquality().hash(_genres));

@override
String toString() {
  return 'MovieDto(id: $id, title: $title, duration: $duration, rating: $rating, posterUrl: $posterUrl, genres: $genres)';
}


}

/// @nodoc
abstract mixin class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) _then) = __$MovieDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, int duration, double rating, String posterUrl, List<String> genres
});




}
/// @nodoc
class __$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(this._self, this._then);

  final _MovieDto _self;
  final $Res Function(_MovieDto) _then;

/// Create a copy of MovieDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? rating = null,Object? posterUrl = null,Object? genres = null,}) {
  return _then(_MovieDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
