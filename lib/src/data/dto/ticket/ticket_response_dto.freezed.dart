// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketListResponseDto {

 List<TicketResponseDto> get tickets;
/// Create a copy of TicketListResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketListResponseDtoCopyWith<TicketListResponseDto> get copyWith => _$TicketListResponseDtoCopyWithImpl<TicketListResponseDto>(this as TicketListResponseDto, _$identity);

  /// Serializes this TicketListResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketListResponseDto&&const DeepCollectionEquality().equals(other.tickets, tickets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tickets));

@override
String toString() {
  return 'TicketListResponseDto(tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class $TicketListResponseDtoCopyWith<$Res>  {
  factory $TicketListResponseDtoCopyWith(TicketListResponseDto value, $Res Function(TicketListResponseDto) _then) = _$TicketListResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<TicketResponseDto> tickets
});




}
/// @nodoc
class _$TicketListResponseDtoCopyWithImpl<$Res>
    implements $TicketListResponseDtoCopyWith<$Res> {
  _$TicketListResponseDtoCopyWithImpl(this._self, this._then);

  final TicketListResponseDto _self;
  final $Res Function(TicketListResponseDto) _then;

/// Create a copy of TicketListResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tickets = null,}) {
  return _then(_self.copyWith(
tickets: null == tickets ? _self.tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketResponseDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketListResponseDto].
extension TicketListResponseDtoPatterns on TicketListResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketListResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketListResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketListResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketListResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketListResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketListResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TicketResponseDto> tickets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketListResponseDto() when $default != null:
return $default(_that.tickets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TicketResponseDto> tickets)  $default,) {final _that = this;
switch (_that) {
case _TicketListResponseDto():
return $default(_that.tickets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TicketResponseDto> tickets)?  $default,) {final _that = this;
switch (_that) {
case _TicketListResponseDto() when $default != null:
return $default(_that.tickets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketListResponseDto implements TicketListResponseDto {
  const _TicketListResponseDto({final  List<TicketResponseDto> tickets = const []}): _tickets = tickets;
  factory _TicketListResponseDto.fromJson(Map<String, dynamic> json) => _$TicketListResponseDtoFromJson(json);

 final  List<TicketResponseDto> _tickets;
@override@JsonKey() List<TicketResponseDto> get tickets {
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tickets);
}


/// Create a copy of TicketListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketListResponseDtoCopyWith<_TicketListResponseDto> get copyWith => __$TicketListResponseDtoCopyWithImpl<_TicketListResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketListResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketListResponseDto&&const DeepCollectionEquality().equals(other._tickets, _tickets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tickets));

@override
String toString() {
  return 'TicketListResponseDto(tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class _$TicketListResponseDtoCopyWith<$Res> implements $TicketListResponseDtoCopyWith<$Res> {
  factory _$TicketListResponseDtoCopyWith(_TicketListResponseDto value, $Res Function(_TicketListResponseDto) _then) = __$TicketListResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<TicketResponseDto> tickets
});




}
/// @nodoc
class __$TicketListResponseDtoCopyWithImpl<$Res>
    implements _$TicketListResponseDtoCopyWith<$Res> {
  __$TicketListResponseDtoCopyWithImpl(this._self, this._then);

  final _TicketListResponseDto _self;
  final $Res Function(_TicketListResponseDto) _then;

/// Create a copy of TicketListResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tickets = null,}) {
  return _then(_TicketListResponseDto(
tickets: null == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketResponseDto>,
  ));
}


}


/// @nodoc
mixin _$TicketResponseDto {

 int get id;@JsonKey(name: 'movie_title') String get movieTitle;@JsonKey(name: 'poster_url') String get posterUrl; String get date; String get time;@JsonKey(name: 'cinema_name') String get cinemaName;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of TicketResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketResponseDtoCopyWith<TicketResponseDto> get copyWith => _$TicketResponseDtoCopyWithImpl<TicketResponseDto>(this as TicketResponseDto, _$identity);

  /// Serializes this TicketResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.movieTitle, movieTitle) || other.movieTitle == movieTitle)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.cinemaName, cinemaName) || other.cinemaName == cinemaName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,movieTitle,posterUrl,date,time,cinemaName,isActive);

@override
String toString() {
  return 'TicketResponseDto(id: $id, movieTitle: $movieTitle, posterUrl: $posterUrl, date: $date, time: $time, cinemaName: $cinemaName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $TicketResponseDtoCopyWith<$Res>  {
  factory $TicketResponseDtoCopyWith(TicketResponseDto value, $Res Function(TicketResponseDto) _then) = _$TicketResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'movie_title') String movieTitle,@JsonKey(name: 'poster_url') String posterUrl, String date, String time,@JsonKey(name: 'cinema_name') String cinemaName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$TicketResponseDtoCopyWithImpl<$Res>
    implements $TicketResponseDtoCopyWith<$Res> {
  _$TicketResponseDtoCopyWithImpl(this._self, this._then);

  final TicketResponseDto _self;
  final $Res Function(TicketResponseDto) _then;

/// Create a copy of TicketResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? movieTitle = null,Object? posterUrl = null,Object? date = null,Object? time = null,Object? cinemaName = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,movieTitle: null == movieTitle ? _self.movieTitle : movieTitle // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,cinemaName: null == cinemaName ? _self.cinemaName : cinemaName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketResponseDto].
extension TicketResponseDtoPatterns on TicketResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'movie_title')  String movieTitle, @JsonKey(name: 'poster_url')  String posterUrl,  String date,  String time, @JsonKey(name: 'cinema_name')  String cinemaName, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketResponseDto() when $default != null:
return $default(_that.id,_that.movieTitle,_that.posterUrl,_that.date,_that.time,_that.cinemaName,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'movie_title')  String movieTitle, @JsonKey(name: 'poster_url')  String posterUrl,  String date,  String time, @JsonKey(name: 'cinema_name')  String cinemaName, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _TicketResponseDto():
return $default(_that.id,_that.movieTitle,_that.posterUrl,_that.date,_that.time,_that.cinemaName,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'movie_title')  String movieTitle, @JsonKey(name: 'poster_url')  String posterUrl,  String date,  String time, @JsonKey(name: 'cinema_name')  String cinemaName, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _TicketResponseDto() when $default != null:
return $default(_that.id,_that.movieTitle,_that.posterUrl,_that.date,_that.time,_that.cinemaName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketResponseDto implements TicketResponseDto {
  const _TicketResponseDto({required this.id, @JsonKey(name: 'movie_title') required this.movieTitle, @JsonKey(name: 'poster_url') required this.posterUrl, required this.date, required this.time, @JsonKey(name: 'cinema_name') required this.cinemaName, @JsonKey(name: 'is_active') required this.isActive});
  factory _TicketResponseDto.fromJson(Map<String, dynamic> json) => _$TicketResponseDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'movie_title') final  String movieTitle;
@override@JsonKey(name: 'poster_url') final  String posterUrl;
@override final  String date;
@override final  String time;
@override@JsonKey(name: 'cinema_name') final  String cinemaName;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of TicketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketResponseDtoCopyWith<_TicketResponseDto> get copyWith => __$TicketResponseDtoCopyWithImpl<_TicketResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.movieTitle, movieTitle) || other.movieTitle == movieTitle)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.cinemaName, cinemaName) || other.cinemaName == cinemaName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,movieTitle,posterUrl,date,time,cinemaName,isActive);

@override
String toString() {
  return 'TicketResponseDto(id: $id, movieTitle: $movieTitle, posterUrl: $posterUrl, date: $date, time: $time, cinemaName: $cinemaName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$TicketResponseDtoCopyWith<$Res> implements $TicketResponseDtoCopyWith<$Res> {
  factory _$TicketResponseDtoCopyWith(_TicketResponseDto value, $Res Function(_TicketResponseDto) _then) = __$TicketResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'movie_title') String movieTitle,@JsonKey(name: 'poster_url') String posterUrl, String date, String time,@JsonKey(name: 'cinema_name') String cinemaName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$TicketResponseDtoCopyWithImpl<$Res>
    implements _$TicketResponseDtoCopyWith<$Res> {
  __$TicketResponseDtoCopyWithImpl(this._self, this._then);

  final _TicketResponseDto _self;
  final $Res Function(_TicketResponseDto) _then;

/// Create a copy of TicketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? movieTitle = null,Object? posterUrl = null,Object? date = null,Object? time = null,Object? cinemaName = null,Object? isActive = null,}) {
  return _then(_TicketResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,movieTitle: null == movieTitle ? _self.movieTitle : movieTitle // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,cinemaName: null == cinemaName ? _self.cinemaName : cinemaName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
