// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riverpod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingHomeAssetUrls {

 String get splash; String get lapponiaClassica; String get vacanzeSpeciali;
/// Create a copy of BookingHomeAssetUrls
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingHomeAssetUrlsCopyWith<BookingHomeAssetUrls> get copyWith => _$BookingHomeAssetUrlsCopyWithImpl<BookingHomeAssetUrls>(this as BookingHomeAssetUrls, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingHomeAssetUrls&&(identical(other.splash, splash) || other.splash == splash)&&(identical(other.lapponiaClassica, lapponiaClassica) || other.lapponiaClassica == lapponiaClassica)&&(identical(other.vacanzeSpeciali, vacanzeSpeciali) || other.vacanzeSpeciali == vacanzeSpeciali));
}


@override
int get hashCode => Object.hash(runtimeType,splash,lapponiaClassica,vacanzeSpeciali);

@override
String toString() {
  return 'BookingHomeAssetUrls(splash: $splash, lapponiaClassica: $lapponiaClassica, vacanzeSpeciali: $vacanzeSpeciali)';
}


}

/// @nodoc
abstract mixin class $BookingHomeAssetUrlsCopyWith<$Res>  {
  factory $BookingHomeAssetUrlsCopyWith(BookingHomeAssetUrls value, $Res Function(BookingHomeAssetUrls) _then) = _$BookingHomeAssetUrlsCopyWithImpl;
@useResult
$Res call({
 String splash, String lapponiaClassica, String vacanzeSpeciali
});




}
/// @nodoc
class _$BookingHomeAssetUrlsCopyWithImpl<$Res>
    implements $BookingHomeAssetUrlsCopyWith<$Res> {
  _$BookingHomeAssetUrlsCopyWithImpl(this._self, this._then);

  final BookingHomeAssetUrls _self;
  final $Res Function(BookingHomeAssetUrls) _then;

/// Create a copy of BookingHomeAssetUrls
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? splash = null,Object? lapponiaClassica = null,Object? vacanzeSpeciali = null,}) {
  return _then(_self.copyWith(
splash: null == splash ? _self.splash : splash // ignore: cast_nullable_to_non_nullable
as String,lapponiaClassica: null == lapponiaClassica ? _self.lapponiaClassica : lapponiaClassica // ignore: cast_nullable_to_non_nullable
as String,vacanzeSpeciali: null == vacanzeSpeciali ? _self.vacanzeSpeciali : vacanzeSpeciali // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingHomeAssetUrls].
extension BookingHomeAssetUrlsPatterns on BookingHomeAssetUrls {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingHomeAssetUrls value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingHomeAssetUrls() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingHomeAssetUrls value)  $default,){
final _that = this;
switch (_that) {
case _BookingHomeAssetUrls():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingHomeAssetUrls value)?  $default,){
final _that = this;
switch (_that) {
case _BookingHomeAssetUrls() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String splash,  String lapponiaClassica,  String vacanzeSpeciali)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingHomeAssetUrls() when $default != null:
return $default(_that.splash,_that.lapponiaClassica,_that.vacanzeSpeciali);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String splash,  String lapponiaClassica,  String vacanzeSpeciali)  $default,) {final _that = this;
switch (_that) {
case _BookingHomeAssetUrls():
return $default(_that.splash,_that.lapponiaClassica,_that.vacanzeSpeciali);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String splash,  String lapponiaClassica,  String vacanzeSpeciali)?  $default,) {final _that = this;
switch (_that) {
case _BookingHomeAssetUrls() when $default != null:
return $default(_that.splash,_that.lapponiaClassica,_that.vacanzeSpeciali);case _:
  return null;

}
}

}

/// @nodoc


class _BookingHomeAssetUrls implements BookingHomeAssetUrls {
  const _BookingHomeAssetUrls({required this.splash, required this.lapponiaClassica, required this.vacanzeSpeciali});
  

@override final  String splash;
@override final  String lapponiaClassica;
@override final  String vacanzeSpeciali;

/// Create a copy of BookingHomeAssetUrls
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingHomeAssetUrlsCopyWith<_BookingHomeAssetUrls> get copyWith => __$BookingHomeAssetUrlsCopyWithImpl<_BookingHomeAssetUrls>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingHomeAssetUrls&&(identical(other.splash, splash) || other.splash == splash)&&(identical(other.lapponiaClassica, lapponiaClassica) || other.lapponiaClassica == lapponiaClassica)&&(identical(other.vacanzeSpeciali, vacanzeSpeciali) || other.vacanzeSpeciali == vacanzeSpeciali));
}


@override
int get hashCode => Object.hash(runtimeType,splash,lapponiaClassica,vacanzeSpeciali);

@override
String toString() {
  return 'BookingHomeAssetUrls(splash: $splash, lapponiaClassica: $lapponiaClassica, vacanzeSpeciali: $vacanzeSpeciali)';
}


}

/// @nodoc
abstract mixin class _$BookingHomeAssetUrlsCopyWith<$Res> implements $BookingHomeAssetUrlsCopyWith<$Res> {
  factory _$BookingHomeAssetUrlsCopyWith(_BookingHomeAssetUrls value, $Res Function(_BookingHomeAssetUrls) _then) = __$BookingHomeAssetUrlsCopyWithImpl;
@override @useResult
$Res call({
 String splash, String lapponiaClassica, String vacanzeSpeciali
});




}
/// @nodoc
class __$BookingHomeAssetUrlsCopyWithImpl<$Res>
    implements _$BookingHomeAssetUrlsCopyWith<$Res> {
  __$BookingHomeAssetUrlsCopyWithImpl(this._self, this._then);

  final _BookingHomeAssetUrls _self;
  final $Res Function(_BookingHomeAssetUrls) _then;

/// Create a copy of BookingHomeAssetUrls
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? splash = null,Object? lapponiaClassica = null,Object? vacanzeSpeciali = null,}) {
  return _then(_BookingHomeAssetUrls(
splash: null == splash ? _self.splash : splash // ignore: cast_nullable_to_non_nullable
as String,lapponiaClassica: null == lapponiaClassica ? _self.lapponiaClassica : lapponiaClassica // ignore: cast_nullable_to_non_nullable
as String,vacanzeSpeciali: null == vacanzeSpeciali ? _self.vacanzeSpeciali : vacanzeSpeciali // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
