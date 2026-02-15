// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VacanzaSpeciale _$VacanzaSpecialeFromJson(Map<String, dynamic> json) =>
    _VacanzaSpeciale(
      id: json['id'] as String,
      splash: json['splash'] as String,
      priceCents: (json['price_cents'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      moreInfo: json['more_info'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$VacanzaSpecialeToJson(_VacanzaSpeciale instance) =>
    <String, dynamic>{
      'id': instance.id,
      'splash': instance.splash,
      'price_cents': instance.priceCents,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'more_info': instance.moreInfo,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
