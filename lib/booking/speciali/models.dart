import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
sealed class VacanzaSpeciale with _$VacanzaSpeciale {
  const VacanzaSpeciale._();
  const factory VacanzaSpeciale({
    required String id,
    required String splash,
    @JsonKey(name: "price_cents") required int priceCents,
    required String title,
    required String subtitle,
    required String description,
    @JsonKey(name: "more_info") required String moreInfo,
    @JsonKey(name: "start_date") required DateTime startDate,
    @JsonKey(name: "end_date") required DateTime endDate,
    DateTime? created,
    DateTime? updated,
  }) = _VacanzaSpeciale;
  factory VacanzaSpeciale.fromJson(Map<String, Object?> json) =>
      _$VacanzaSpecialeFromJson(json);

  String imageUrl(String baseUrl) =>
      "$baseUrl/api/files/vacanze_speciali/$id/$splash";
}
