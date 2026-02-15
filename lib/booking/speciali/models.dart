import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
sealed class VacanzaSpeciale with _$VacanzaSpeciale {
  const factory VacanzaSpeciale({
    required String id,
    required String splash,
    required int price_cents,
    required String title,
    required String subtitle,
    required String description,
    required String more_info,
    required String start_date,
    required String end_date,
    String? created,
    String? updated,
  }) = _VacanzaSpeciale;
  factory VacanzaSpeciale.fromJson(Map<String, Object?> json) =>
      _$VacanzaSpecialeFromJson(json);
}
