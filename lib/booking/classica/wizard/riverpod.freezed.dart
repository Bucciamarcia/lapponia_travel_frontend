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

 bool get haveSpecificDates; DateTime? get startDate; DateTime? get endDate; List<WizardPpl> get participants; WizardTravelMode? get persona;
/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardStateCopyWith<WizardState> get copyWith => _$WizardStateCopyWithImpl<WizardState>(this as WizardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardState&&(identical(other.haveSpecificDates, haveSpecificDates) || other.haveSpecificDates == haveSpecificDates)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.participants, participants)&&(identical(other.persona, persona) || other.persona == persona));
}


@override
int get hashCode => Object.hash(runtimeType,haveSpecificDates,startDate,endDate,const DeepCollectionEquality().hash(participants),persona);

@override
String toString() {
  return 'WizardState(haveSpecificDates: $haveSpecificDates, startDate: $startDate, endDate: $endDate, participants: $participants, persona: $persona)';
}


}

/// @nodoc
abstract mixin class $WizardStateCopyWith<$Res>  {
  factory $WizardStateCopyWith(WizardState value, $Res Function(WizardState) _then) = _$WizardStateCopyWithImpl;
@useResult
$Res call({
 bool haveSpecificDates, DateTime? startDate, DateTime? endDate, List<WizardPpl> participants, WizardTravelMode? persona
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
@pragma('vm:prefer-inline') @override $Res call({Object? haveSpecificDates = null,Object? startDate = freezed,Object? endDate = freezed,Object? participants = null,Object? persona = freezed,}) {
  return _then(_self.copyWith(
haveSpecificDates: null == haveSpecificDates ? _self.haveSpecificDates : haveSpecificDates // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<WizardPpl>,persona: freezed == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as WizardTravelMode?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate,  List<WizardPpl> participants,  WizardTravelMode? persona)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate,_that.participants,_that.persona);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate,  List<WizardPpl> participants,  WizardTravelMode? persona)  $default,) {final _that = this;
switch (_that) {
case _WizardState():
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate,_that.participants,_that.persona);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool haveSpecificDates,  DateTime? startDate,  DateTime? endDate,  List<WizardPpl> participants,  WizardTravelMode? persona)?  $default,) {final _that = this;
switch (_that) {
case _WizardState() when $default != null:
return $default(_that.haveSpecificDates,_that.startDate,_that.endDate,_that.participants,_that.persona);case _:
  return null;

}
}

}

/// @nodoc


class _WizardState extends WizardState {
  const _WizardState({this.haveSpecificDates = true, this.startDate, this.endDate, final  List<WizardPpl> participants = const [], this.persona}): _participants = participants,super._();
  

@override@JsonKey() final  bool haveSpecificDates;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
 final  List<WizardPpl> _participants;
@override@JsonKey() List<WizardPpl> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

@override final  WizardTravelMode? persona;

/// Create a copy of WizardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardStateCopyWith<_WizardState> get copyWith => __$WizardStateCopyWithImpl<_WizardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardState&&(identical(other.haveSpecificDates, haveSpecificDates) || other.haveSpecificDates == haveSpecificDates)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._participants, _participants)&&(identical(other.persona, persona) || other.persona == persona));
}


@override
int get hashCode => Object.hash(runtimeType,haveSpecificDates,startDate,endDate,const DeepCollectionEquality().hash(_participants),persona);

@override
String toString() {
  return 'WizardState(haveSpecificDates: $haveSpecificDates, startDate: $startDate, endDate: $endDate, participants: $participants, persona: $persona)';
}


}

/// @nodoc
abstract mixin class _$WizardStateCopyWith<$Res> implements $WizardStateCopyWith<$Res> {
  factory _$WizardStateCopyWith(_WizardState value, $Res Function(_WizardState) _then) = __$WizardStateCopyWithImpl;
@override @useResult
$Res call({
 bool haveSpecificDates, DateTime? startDate, DateTime? endDate, List<WizardPpl> participants, WizardTravelMode? persona
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
@override @pragma('vm:prefer-inline') $Res call({Object? haveSpecificDates = null,Object? startDate = freezed,Object? endDate = freezed,Object? participants = null,Object? persona = freezed,}) {
  return _then(_WizardState(
haveSpecificDates: null == haveSpecificDates ? _self.haveSpecificDates : haveSpecificDates // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<WizardPpl>,persona: freezed == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as WizardTravelMode?,
  ));
}


}

/// @nodoc
mixin _$WizardPpl {

 WizardPersona get type; int? get age;
/// Create a copy of WizardPpl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WizardPplCopyWith<WizardPpl> get copyWith => _$WizardPplCopyWithImpl<WizardPpl>(this as WizardPpl, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WizardPpl&&(identical(other.type, type) || other.type == type)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,type,age);

@override
String toString() {
  return 'WizardPpl(type: $type, age: $age)';
}


}

/// @nodoc
abstract mixin class $WizardPplCopyWith<$Res>  {
  factory $WizardPplCopyWith(WizardPpl value, $Res Function(WizardPpl) _then) = _$WizardPplCopyWithImpl;
@useResult
$Res call({
 WizardPersona type, int? age
});




}
/// @nodoc
class _$WizardPplCopyWithImpl<$Res>
    implements $WizardPplCopyWith<$Res> {
  _$WizardPplCopyWithImpl(this._self, this._then);

  final WizardPpl _self;
  final $Res Function(WizardPpl) _then;

/// Create a copy of WizardPpl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? age = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WizardPersona,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WizardPpl].
extension WizardPplPatterns on WizardPpl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WizardPpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WizardPpl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WizardPpl value)  $default,){
final _that = this;
switch (_that) {
case _WizardPpl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WizardPpl value)?  $default,){
final _that = this;
switch (_that) {
case _WizardPpl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WizardPersona type,  int? age)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WizardPpl() when $default != null:
return $default(_that.type,_that.age);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WizardPersona type,  int? age)  $default,) {final _that = this;
switch (_that) {
case _WizardPpl():
return $default(_that.type,_that.age);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WizardPersona type,  int? age)?  $default,) {final _that = this;
switch (_that) {
case _WizardPpl() when $default != null:
return $default(_that.type,_that.age);case _:
  return null;

}
}

}

/// @nodoc


class _WizardPpl implements WizardPpl {
  const _WizardPpl({required this.type, this.age});
  

@override final  WizardPersona type;
@override final  int? age;

/// Create a copy of WizardPpl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WizardPplCopyWith<_WizardPpl> get copyWith => __$WizardPplCopyWithImpl<_WizardPpl>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WizardPpl&&(identical(other.type, type) || other.type == type)&&(identical(other.age, age) || other.age == age));
}


@override
int get hashCode => Object.hash(runtimeType,type,age);

@override
String toString() {
  return 'WizardPpl(type: $type, age: $age)';
}


}

/// @nodoc
abstract mixin class _$WizardPplCopyWith<$Res> implements $WizardPplCopyWith<$Res> {
  factory _$WizardPplCopyWith(_WizardPpl value, $Res Function(_WizardPpl) _then) = __$WizardPplCopyWithImpl;
@override @useResult
$Res call({
 WizardPersona type, int? age
});




}
/// @nodoc
class __$WizardPplCopyWithImpl<$Res>
    implements _$WizardPplCopyWith<$Res> {
  __$WizardPplCopyWithImpl(this._self, this._then);

  final _WizardPpl _self;
  final $Res Function(_WizardPpl) _then;

/// Create a copy of WizardPpl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? age = freezed,}) {
  return _then(_WizardPpl(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WizardPersona,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
