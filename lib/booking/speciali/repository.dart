import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapponia_travel_frontend/booking/repository.dart';
import 'package:lapponia_travel_frontend/common/backend_router.dart';
import 'package:lapponia_travel_frontend/common/error_handling.dart';
import 'package:pocketbase/pocketbase.dart';
import 'models.dart';
part 'repository.freezed.dart';

class VacanzeSpecialiRepository {
  final pb = PocketBase(BackendRouter.route);

  Future<VacanzeSpecialiPageData> getPagedata() async {
    final splashUrl = await BookingHomeRepository().getImageUrl(
      "hb5osah1oty0b7c",
    );
    final tours = await _getVacanzeSpeciali();
    return VacanzeSpecialiPageData(splashUrl: splashUrl, tours: tours);
  }

  Future<List<VacanzaSpeciale>> _getVacanzeSpeciali() async {
    try {
      final collection = await pb.collection("vacanze_speciali").getFullList();
      return collection
          .map((item) => VacanzaSpeciale.fromJson(item.toJson()))
          .toList();
    } catch (e, s) {
      BasicLogger().error(
        "Couldn't get vacanze speciali",
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}

@freezed
sealed class VacanzeSpecialiPageData with _$VacanzeSpecialiPageData {
  const factory VacanzeSpecialiPageData({
    required String splashUrl,
    required List<VacanzaSpeciale> tours,
  }) = _VacanzeSpecialiPageData;
}
