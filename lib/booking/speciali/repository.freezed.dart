// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VacanzeSpecialiPageData {

 String get splashUrl; List<VacanzaSpeciale> get tours;
/// Create a copy of VacanzeSpecialiPageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VacanzeSpecialiPageDataCopyWith<VacanzeSpecialiPageData> get copyWith => _$VacanzeSpecialiPageDataCopyWithImpl<VacanzeSpecialiPageData>(this as VacanzeSpecialiPageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VacanzeSpecialiPageData&&(identical(other.splashUrl, splashUrl) || other.splashUrl == splashUrl)&&const DeepCollectionEquality().equals(other.tours, tours));
}


@override
int get hashCode => Object.hash(runtimeType,splashUrl,const DeepCollectionEquality().hash(tours));

@override
String toString() {
  return 'VacanzeSpecialiPageData(splashUrl: $splashUrl, tours: $tours)';
}


}

/// @nodoc
abstract mixin class $VacanzeSpecialiPageDataCopyWith<$Res>  {
  factory $VacanzeSpecialiPageDataCopyWith(VacanzeSpecialiPageData value, $Res Function(VacanzeSpecialiPageData) _then) = _$VacanzeSpecialiPageDataCopyWithImpl;
@useResult
$Res call({
 String splashUrl, List<VacanzaSpeciale> tours
});




}
/// @nodoc
class _$VacanzeSpecialiPageDataCopyWithImpl<$Res>
    implements $VacanzeSpecialiPageDataCopyWith<$Res> {
  _$VacanzeSpecialiPageDataCopyWithImpl(this._self, this._then);

  final VacanzeSpecialiPageData _self;
  final $Res Function(VacanzeSpecialiPageData) _then;

/// Create a copy of VacanzeSpecialiPageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? splashUrl = null,Object? tours = null,}) {
  return _then(_self.copyWith(
splashUrl: null == splashUrl ? _self.splashUrl : splashUrl // ignore: cast_nullable_to_non_nullable
as String,tours: null == tours ? _self.tours : tours // ignore: cast_nullable_to_non_nullable
as List<VacanzaSpeciale>,
  ));
}

}


/// Adds pattern-matching-related methods to [VacanzeSpecialiPageData].
extension VacanzeSpecialiPageDataPatterns on VacanzeSpecialiPageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VacanzeSpecialiPageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VacanzeSpecialiPageData value)  $default,){
final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VacanzeSpecialiPageData value)?  $default,){
final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String splashUrl,  List<VacanzaSpeciale> tours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData() when $default != null:
return $default(_that.splashUrl,_that.tours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String splashUrl,  List<VacanzaSpeciale> tours)  $default,) {final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData():
return $default(_that.splashUrl,_that.tours);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String splashUrl,  List<VacanzaSpeciale> tours)?  $default,) {final _that = this;
switch (_that) {
case _VacanzeSpecialiPageData() when $default != null:
return $default(_that.splashUrl,_that.tours);case _:
  return null;

}
}

}

/// @nodoc


class _VacanzeSpecialiPageData implements VacanzeSpecialiPageData {
  const _VacanzeSpecialiPageData({required this.splashUrl, required final  List<VacanzaSpeciale> tours}): _tours = tours;
  

@override final  String splashUrl;
 final  List<VacanzaSpeciale> _tours;
@override List<VacanzaSpeciale> get tours {
  if (_tours is EqualUnmodifiableListView) return _tours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tours);
}


/// Create a copy of VacanzeSpecialiPageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VacanzeSpecialiPageDataCopyWith<_VacanzeSpecialiPageData> get copyWith => __$VacanzeSpecialiPageDataCopyWithImpl<_VacanzeSpecialiPageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VacanzeSpecialiPageData&&(identical(other.splashUrl, splashUrl) || other.splashUrl == splashUrl)&&const DeepCollectionEquality().equals(other._tours, _tours));
}


@override
int get hashCode => Object.hash(runtimeType,splashUrl,const DeepCollectionEquality().hash(_tours));

@override
String toString() {
  return 'VacanzeSpecialiPageData(splashUrl: $splashUrl, tours: $tours)';
}


}

/// @nodoc
abstract mixin class _$VacanzeSpecialiPageDataCopyWith<$Res> implements $VacanzeSpecialiPageDataCopyWith<$Res> {
  factory _$VacanzeSpecialiPageDataCopyWith(_VacanzeSpecialiPageData value, $Res Function(_VacanzeSpecialiPageData) _then) = __$VacanzeSpecialiPageDataCopyWithImpl;
@override @useResult
$Res call({
 String splashUrl, List<VacanzaSpeciale> tours
});




}
/// @nodoc
class __$VacanzeSpecialiPageDataCopyWithImpl<$Res>
    implements _$VacanzeSpecialiPageDataCopyWith<$Res> {
  __$VacanzeSpecialiPageDataCopyWithImpl(this._self, this._then);

  final _VacanzeSpecialiPageData _self;
  final $Res Function(_VacanzeSpecialiPageData) _then;

/// Create a copy of VacanzeSpecialiPageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? splashUrl = null,Object? tours = null,}) {
  return _then(_VacanzeSpecialiPageData(
splashUrl: null == splashUrl ? _self.splashUrl : splashUrl // ignore: cast_nullable_to_non_nullable
as String,tours: null == tours ? _self._tours : tours // ignore: cast_nullable_to_non_nullable
as List<VacanzaSpeciale>,
  ));
}


}

// dart format on
