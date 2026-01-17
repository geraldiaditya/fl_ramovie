// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cinema {

 int get id; String get name; String get brand; String get city; String get address; double get rating; double get lat; double get lon;@JsonKey(name: 'picture_url') String get pictureUrl;
/// Create a copy of Cinema
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CinemaCopyWith<Cinema> get copyWith => _$CinemaCopyWithImpl<Cinema>(this as Cinema, _$identity);

  /// Serializes this Cinema to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cinema&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,brand,city,address,rating,lat,lon,pictureUrl);

@override
String toString() {
  return 'Cinema(id: $id, name: $name, brand: $brand, city: $city, address: $address, rating: $rating, lat: $lat, lon: $lon, pictureUrl: $pictureUrl)';
}


}

/// @nodoc
abstract mixin class $CinemaCopyWith<$Res>  {
  factory $CinemaCopyWith(Cinema value, $Res Function(Cinema) _then) = _$CinemaCopyWithImpl;
@useResult
$Res call({
 int id, String name, String brand, String city, String address, double rating, double lat, double lon,@JsonKey(name: 'picture_url') String pictureUrl
});




}
/// @nodoc
class _$CinemaCopyWithImpl<$Res>
    implements $CinemaCopyWith<$Res> {
  _$CinemaCopyWithImpl(this._self, this._then);

  final Cinema _self;
  final $Res Function(Cinema) _then;

/// Create a copy of Cinema
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? brand = null,Object? city = null,Object? address = null,Object? rating = null,Object? lat = null,Object? lon = null,Object? pictureUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,pictureUrl: null == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Cinema].
extension CinemaPatterns on Cinema {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cinema value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cinema() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cinema value)  $default,){
final _that = this;
switch (_that) {
case _Cinema():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cinema value)?  $default,){
final _that = this;
switch (_that) {
case _Cinema() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'picture_url')  String pictureUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cinema() when $default != null:
return $default(_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.pictureUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'picture_url')  String pictureUrl)  $default,) {final _that = this;
switch (_that) {
case _Cinema():
return $default(_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.pictureUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String brand,  String city,  String address,  double rating,  double lat,  double lon, @JsonKey(name: 'picture_url')  String pictureUrl)?  $default,) {final _that = this;
switch (_that) {
case _Cinema() when $default != null:
return $default(_that.id,_that.name,_that.brand,_that.city,_that.address,_that.rating,_that.lat,_that.lon,_that.pictureUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cinema implements Cinema {
  const _Cinema({this.id = 0, this.name = '', this.brand = '', this.city = '', this.address = '', this.rating = 0.0, this.lat = 0.0, this.lon = 0.0, @JsonKey(name: 'picture_url') this.pictureUrl = ''});
  factory _Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String brand;
@override@JsonKey() final  String city;
@override@JsonKey() final  String address;
@override@JsonKey() final  double rating;
@override@JsonKey() final  double lat;
@override@JsonKey() final  double lon;
@override@JsonKey(name: 'picture_url') final  String pictureUrl;

/// Create a copy of Cinema
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CinemaCopyWith<_Cinema> get copyWith => __$CinemaCopyWithImpl<_Cinema>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CinemaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cinema&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,brand,city,address,rating,lat,lon,pictureUrl);

@override
String toString() {
  return 'Cinema(id: $id, name: $name, brand: $brand, city: $city, address: $address, rating: $rating, lat: $lat, lon: $lon, pictureUrl: $pictureUrl)';
}


}

/// @nodoc
abstract mixin class _$CinemaCopyWith<$Res> implements $CinemaCopyWith<$Res> {
  factory _$CinemaCopyWith(_Cinema value, $Res Function(_Cinema) _then) = __$CinemaCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String brand, String city, String address, double rating, double lat, double lon,@JsonKey(name: 'picture_url') String pictureUrl
});




}
/// @nodoc
class __$CinemaCopyWithImpl<$Res>
    implements _$CinemaCopyWith<$Res> {
  __$CinemaCopyWithImpl(this._self, this._then);

  final _Cinema _self;
  final $Res Function(_Cinema) _then;

/// Create a copy of Cinema
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? brand = null,Object? city = null,Object? address = null,Object? rating = null,Object? lat = null,Object? lon = null,Object? pictureUrl = null,}) {
  return _then(_Cinema(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,pictureUrl: null == pictureUrl ? _self.pictureUrl : pictureUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
