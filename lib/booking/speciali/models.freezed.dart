// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VacanzaSpeciale {

 String get id; String get splash;@JsonKey(name: "price_cents") int get priceCents; String get title; String get subtitle; String get description;@JsonKey(name: "more_info") String get moreInfo;@JsonKey(name: "start_date") DateTime get startDate;@JsonKey(name: "end_date") DateTime get endDate; DateTime? get created; DateTime? get updated;
/// Create a copy of VacanzaSpeciale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VacanzaSpecialeCopyWith<VacanzaSpeciale> get copyWith => _$VacanzaSpecialeCopyWithImpl<VacanzaSpeciale>(this as VacanzaSpeciale, _$identity);

  /// Serializes this VacanzaSpeciale to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VacanzaSpeciale&&(identical(other.id, id) || other.id == id)&&(identical(other.splash, splash) || other.splash == splash)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.moreInfo, moreInfo) || other.moreInfo == moreInfo)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,splash,priceCents,title,subtitle,description,moreInfo,startDate,endDate,created,updated);

@override
String toString() {
  return 'VacanzaSpeciale(id: $id, splash: $splash, priceCents: $priceCents, title: $title, subtitle: $subtitle, description: $description, moreInfo: $moreInfo, startDate: $startDate, endDate: $endDate, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $VacanzaSpecialeCopyWith<$Res>  {
  factory $VacanzaSpecialeCopyWith(VacanzaSpeciale value, $Res Function(VacanzaSpeciale) _then) = _$VacanzaSpecialeCopyWithImpl;
@useResult
$Res call({
 String id, String splash,@JsonKey(name: "price_cents") int priceCents, String title, String subtitle, String description,@JsonKey(name: "more_info") String moreInfo,@JsonKey(name: "start_date") DateTime startDate,@JsonKey(name: "end_date") DateTime endDate, DateTime? created, DateTime? updated
});




}
/// @nodoc
class _$VacanzaSpecialeCopyWithImpl<$Res>
    implements $VacanzaSpecialeCopyWith<$Res> {
  _$VacanzaSpecialeCopyWithImpl(this._self, this._then);

  final VacanzaSpeciale _self;
  final $Res Function(VacanzaSpeciale) _then;

/// Create a copy of VacanzaSpeciale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? splash = null,Object? priceCents = null,Object? title = null,Object? subtitle = null,Object? description = null,Object? moreInfo = null,Object? startDate = null,Object? endDate = null,Object? created = freezed,Object? updated = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,splash: null == splash ? _self.splash : splash // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,moreInfo: null == moreInfo ? _self.moreInfo : moreInfo // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [VacanzaSpeciale].
extension VacanzaSpecialePatterns on VacanzaSpeciale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VacanzaSpeciale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VacanzaSpeciale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VacanzaSpeciale value)  $default,){
final _that = this;
switch (_that) {
case _VacanzaSpeciale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VacanzaSpeciale value)?  $default,){
final _that = this;
switch (_that) {
case _VacanzaSpeciale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String splash, @JsonKey(name: "price_cents")  int priceCents,  String title,  String subtitle,  String description, @JsonKey(name: "more_info")  String moreInfo, @JsonKey(name: "start_date")  DateTime startDate, @JsonKey(name: "end_date")  DateTime endDate,  DateTime? created,  DateTime? updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VacanzaSpeciale() when $default != null:
return $default(_that.id,_that.splash,_that.priceCents,_that.title,_that.subtitle,_that.description,_that.moreInfo,_that.startDate,_that.endDate,_that.created,_that.updated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String splash, @JsonKey(name: "price_cents")  int priceCents,  String title,  String subtitle,  String description, @JsonKey(name: "more_info")  String moreInfo, @JsonKey(name: "start_date")  DateTime startDate, @JsonKey(name: "end_date")  DateTime endDate,  DateTime? created,  DateTime? updated)  $default,) {final _that = this;
switch (_that) {
case _VacanzaSpeciale():
return $default(_that.id,_that.splash,_that.priceCents,_that.title,_that.subtitle,_that.description,_that.moreInfo,_that.startDate,_that.endDate,_that.created,_that.updated);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String splash, @JsonKey(name: "price_cents")  int priceCents,  String title,  String subtitle,  String description, @JsonKey(name: "more_info")  String moreInfo, @JsonKey(name: "start_date")  DateTime startDate, @JsonKey(name: "end_date")  DateTime endDate,  DateTime? created,  DateTime? updated)?  $default,) {final _that = this;
switch (_that) {
case _VacanzaSpeciale() when $default != null:
return $default(_that.id,_that.splash,_that.priceCents,_that.title,_that.subtitle,_that.description,_that.moreInfo,_that.startDate,_that.endDate,_that.created,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VacanzaSpeciale extends VacanzaSpeciale {
  const _VacanzaSpeciale({required this.id, required this.splash, @JsonKey(name: "price_cents") required this.priceCents, required this.title, required this.subtitle, required this.description, @JsonKey(name: "more_info") required this.moreInfo, @JsonKey(name: "start_date") required this.startDate, @JsonKey(name: "end_date") required this.endDate, this.created, this.updated}): super._();
  factory _VacanzaSpeciale.fromJson(Map<String, dynamic> json) => _$VacanzaSpecialeFromJson(json);

@override final  String id;
@override final  String splash;
@override@JsonKey(name: "price_cents") final  int priceCents;
@override final  String title;
@override final  String subtitle;
@override final  String description;
@override@JsonKey(name: "more_info") final  String moreInfo;
@override@JsonKey(name: "start_date") final  DateTime startDate;
@override@JsonKey(name: "end_date") final  DateTime endDate;
@override final  DateTime? created;
@override final  DateTime? updated;

/// Create a copy of VacanzaSpeciale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VacanzaSpecialeCopyWith<_VacanzaSpeciale> get copyWith => __$VacanzaSpecialeCopyWithImpl<_VacanzaSpeciale>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VacanzaSpecialeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VacanzaSpeciale&&(identical(other.id, id) || other.id == id)&&(identical(other.splash, splash) || other.splash == splash)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.moreInfo, moreInfo) || other.moreInfo == moreInfo)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,splash,priceCents,title,subtitle,description,moreInfo,startDate,endDate,created,updated);

@override
String toString() {
  return 'VacanzaSpeciale(id: $id, splash: $splash, priceCents: $priceCents, title: $title, subtitle: $subtitle, description: $description, moreInfo: $moreInfo, startDate: $startDate, endDate: $endDate, created: $created, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$VacanzaSpecialeCopyWith<$Res> implements $VacanzaSpecialeCopyWith<$Res> {
  factory _$VacanzaSpecialeCopyWith(_VacanzaSpeciale value, $Res Function(_VacanzaSpeciale) _then) = __$VacanzaSpecialeCopyWithImpl;
@override @useResult
$Res call({
 String id, String splash,@JsonKey(name: "price_cents") int priceCents, String title, String subtitle, String description,@JsonKey(name: "more_info") String moreInfo,@JsonKey(name: "start_date") DateTime startDate,@JsonKey(name: "end_date") DateTime endDate, DateTime? created, DateTime? updated
});




}
/// @nodoc
class __$VacanzaSpecialeCopyWithImpl<$Res>
    implements _$VacanzaSpecialeCopyWith<$Res> {
  __$VacanzaSpecialeCopyWithImpl(this._self, this._then);

  final _VacanzaSpeciale _self;
  final $Res Function(_VacanzaSpeciale) _then;

/// Create a copy of VacanzaSpeciale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? splash = null,Object? priceCents = null,Object? title = null,Object? subtitle = null,Object? description = null,Object? moreInfo = null,Object? startDate = null,Object? endDate = null,Object? created = freezed,Object? updated = freezed,}) {
  return _then(_VacanzaSpeciale(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,splash: null == splash ? _self.splash : splash // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,moreInfo: null == moreInfo ? _self.moreInfo : moreInfo // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,created: freezed == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime?,updated: freezed == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
