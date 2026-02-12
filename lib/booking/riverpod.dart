import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'riverpod.g.dart';
part 'riverpod.freezed.dart';

@riverpod
Future<BookingHomeAssetUrls> splashImage(Ref ref) async {
  final repo = BookingHomeRepository();
  final splash = await repo.getImageUrl("trl7zj9hg4ppw48");
  final classica = await repo.getImageUrl("uz2nqrg73ejg5ag");
  final speciali = await repo.getImageUrl("hb5osah1oty0b7c");
  return BookingHomeAssetUrls(
    splash: splash,
    lapponiaClassica: classica,
    vacanzeSpeciali: speciali,
  );
}

@freezed
sealed class BookingHomeAssetUrls with _$BookingHomeAssetUrls {
  const factory BookingHomeAssetUrls({
    required String splash,
    required String lapponiaClassica,
    required String vacanzeSpeciali,
  }) = _BookingHomeAssetUrls;
}
