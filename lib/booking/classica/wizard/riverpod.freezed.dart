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
mixin _$WizardState {

 bool get haveSpecificDates; DateTime? get startDate; DateTime? get endDate;
/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardStateCopyWith<WizardState> get copyWith => _$WizardStateCopyWithImpl<WizardState>(this as WizardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardState&&(identical(other.haveSpecificDates, haveSpecificDates) || other.haveSpecificDates == haveSpecificDates)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,haveSpecificDates,startDate,endDate);

@override
String toString() {
  return 'WizardState(haveSpecificDates: $haveSpecificDates, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $WizardStateCopyWith<$Res>  {
  factory $WizardStateCopyWith(WizardState value, $Res Function(WizardState) _then) = _$WizardStateCopyWithImpl;
@useResult
$Res call({
 bool haveSpecificDates, DateTime? startDate, DateTime? endDate
});




}
/// @nodoc
class _$WizardStateCopyWithImpl<$Res>
    implements $WizardStateCopyWith<$Res> {
  _$WizardStateCopyWithImpl(this._self, this._then);

  final WizardState _self;
  final $Res Function(WizardState) _then;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? haveSpecificDates = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
haveSpecificDates: null == haveSpecificDates ? _self.haveSpecificDates : haveSpecificDates // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WizardState].
extension WizardStatePatterns on WizardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WizardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WizardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WizardState value)  $default,){
final _that = this;
switch (_that) {
case _WizardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WizardState value)?  $default,){
final _that = this;
switch (_that) {
case _WizardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate)  $default,) {final _that = this;
switch (_that) {
case _WizardState():
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate)?  $default,) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class _WizardState implements WizardState {
  const _WizardState({this.haveSpecificDates = true, this.startDate, this.endDate});
  

@override@JsonKey() final  bool haveSpecificDates;
@override final  DateTime? startDate;
@override final  DateTime? endDate;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardStateCopyWith<_WizardState> get copyWith => __$WizardStateCopyWithImpl<_WizardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardState&&(identical(other.haveSpecificDates, haveSpecificDates) || other.haveSpecificDates == haveSpecificDates)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,haveSpecificDates,startDate,endDate);

@override
String toString() {
  return 'WizardState(haveSpecificDates: $haveSpecificDates, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$WizardStateCopyWith<$Res> implements $WizardStateCopyWith<$Res> {
  factory _$WizardStateCopyWith(_WizardState value, $Res Function(_WizardState) _then) = __$WizardStateCopyWithImpl;
@override @useResult
$Res call({
 bool haveSpecificDates, DateTime? startDate, DateTime? endDate
});




}
/// @nodoc
class __$WizardStateCopyWithImpl<$Res>
    implements _$WizardStateCopyWith<$Res> {
  __$WizardStateCopyWithImpl(this._self, this._then);

  final _WizardState _self;
  final $Res Function(_WizardState) _then;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? haveSpecificDates = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_WizardState(
haveSpecificDates: null == haveSpecificDates ? _self.haveSpecificDates : haveSpecificDates // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
