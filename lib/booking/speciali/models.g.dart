// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VacanzaSpeciale _$VacanzaSpecialeFromJson(Map<String, dynamic> json) =>
    _VacanzaSpeciale(
      id: json['id'] as String,
      splash: json['splash'] as String,
      price_cents: (json['price_cents'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      more_info: json['more_info'] as String,
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      created: json['created'] as String?,
      updated: json['updated'] as String?,
    );

Map<String, dynamic> _$VacanzaSpecialeToJson(_VacanzaSpeciale instance) =>
    <String, dynamic>{
      'id': instance.id,
      'splash': instance.splash,
      'price_cents': instance.price_cents,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'more_info': instance.more_info,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'created': instance.created,
      'updated': instance.updated,
    };
