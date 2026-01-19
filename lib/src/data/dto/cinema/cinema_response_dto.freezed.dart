// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CinemaResponseDto {

@JsonKey(name: 'picture_url') String get pictureUrl; int get id; String get name; String get brand; String get city; String get address; double get rating; double get lat; double get lon;@JsonKey(name: 'distance_km') double? get distanceKm;
/// Create a copy of CinemaResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CinemaResponseDtoCopyWith<CinemaResponseDto> get copyWith => _$CinemaResponseDtoCopyWithImpl<CinemaResponseDto>(this as CinemaResponseDto, _$identity);

  /// Serializes this CinemaResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CinemaResponseDto&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pictureUrl,id,name,brand,city,address,rating,lat,lon,distanceKm);

@override
String toString() {
  return 'CinemaResponseDto(pictureUrl: $pictureUrl, id: $id, name: $name, brand: $brand, city: $city, address: $address, rating: $rating, lat: $lat, lon: $lon, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class $CinemaResponseDtoCopyWith<$Res>  {
  factory $CinemaResponseDtoCopyWith(CinemaResponseDto value, $Res Function(CinemaResponseDto) _then) = _$CinemaResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'picture_url') String pictureUrl, int id, String name, String brand, String city, String address, double rating, double lat, double lon,@JsonKey(name: 'distance_km') double? distanceKm
});




}
/// @nodoc
class _$CinemaResponseDtoCopyWithImpl<$Res>
    implements $CinemaResponseDtoCopyWith<$Res> {
  _$CinemaResponseDtoCopyWithImpl(this._self, this._then);

  final CinemaResponseDto _self;
  final $Res Function(CinemaResponseDto) _then;

/// Create a copy of CinemaResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pictureUrl = null,Object? id = null,Object? name = null,Object? brand = null,Object? city = null,Object? address = null,Object? rating = null,Object? lat = null,Object? lon = null,Object? distanceKm = freezed,}) {
  return _then(_self.copyWith(
pictureUrl: null == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CinemaResponseDto].
extension CinemaResponseDtoPatterns on CinemaResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CinemaResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CinemaResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CinemaResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CinemaResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CinemaResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CinemaResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'picture_url')  String pictureUrl,  int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'distance_km')  double? distanceKm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CinemaResponseDto() when $default != null:
return $default(_that.pictureUrl,_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.distanceKm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'picture_url')  String pictureUrl,  int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'distance_km')  double? distanceKm)  $default,) {final _that = this;
switch (_that) {
case _CinemaResponseDto():
return $default(_that.pictureUrl,_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.distanceKm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'picture_url')  String pictureUrl,  int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'distance_km')  double? distanceKm)?  $default,) {final _that = this;
switch (_that) {
case _CinemaResponseDto() when $default != null:
return $default(_that.pictureUrl,_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.distanceKm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CinemaResponseDto implements CinemaResponseDto {
  const _CinemaResponseDto({@JsonKey(name: 'picture_url') required this.pictureUrl, this.id = 0, this.name = '', this.brand = '', this.city = '', this.address = '', this.rating = 0.0, this.lat = 0.0, this.lon = 0.0, @JsonKey(name: 'distance_km') this.distanceKm});
  factory _CinemaResponseDto.fromJson(Map<String, dynamic> json) => _$CinemaResponseDtoFromJson(json);

@override@JsonKey(name: 'picture_url') final  String pictureUrl;
@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String brand;
@override@JsonKey() final  String city;
@override@JsonKey() final  String address;
@override@JsonKey() final  double rating;
@override@JsonKey() final  double lat;
@override@JsonKey() final  double lon;
@override@JsonKey(name: 'distance_km') final  double? distanceKm;

/// Create a copy of CinemaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CinemaResponseDtoCopyWith<_CinemaResponseDto> get copyWith => __$CinemaResponseDtoCopyWithImpl<_CinemaResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CinemaResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CinemaResponseDto&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,pictureUrl,id,name,brand,city,address,rating,lat,lon,distanceKm);

@override
String toString() {
  return 'CinemaResponseDto(pictureUrl: $pictureUrl, id: $id, name: $name, brand: $brand, city: $city, address: $address, rating: $rating, lat: $lat, lon: $lon, distanceKm: $distanceKm)';
}


}

/// @nodoc
abstract mixin class _$CinemaResponseDtoCopyWith<$Res> implements $CinemaResponseDtoCopyWith<$Res> {
  factory _$CinemaResponseDtoCopyWith(_CinemaResponseDto value, $Res Function(_CinemaResponseDto) _then) = __$CinemaResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'picture_url') String pictureUrl, int id, String name, String brand, String city, String address, double rating, double lat, double lon,@JsonKey(name: 'distance_km') double? distanceKm
});




}
/// @nodoc
class __$CinemaResponseDtoCopyWithImpl<$Res>
    implements _$CinemaResponseDtoCopyWith<$Res> {
  __$CinemaResponseDtoCopyWithImpl(this._self, this._then);

  final _CinemaResponseDto _self;
  final $Res Function(_CinemaResponseDto) _then;

/// Create a copy of CinemaResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pictureUrl = null,Object? id = null,Object? name = null,Object? brand = null,Object? city = null,Object? address = null,Object? rating = null,Object? lat = null,Object? lon = null,Object? distanceKm = freezed,}) {
  return _then(_CinemaResponseDto(
pictureUrl: null == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
