import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'riverpod.g.dart';
part 'riverpod.freezed.dart';

@riverpod
class Wizard extends _$Wizard {
  @override
  WizardState build() {
    return const WizardState();
  }

  void changeHasSeteDates(bool v) {
    state = state.copyWith(haveSpecificDates: v);
  }

  void changeDateRange(DateTime? start, DateTime? end) {
    state = state.copyWith(startDate: start, endDate: end);
  }
}

@freezed
sealed class WizardState with _$WizardState {
  const factory WizardState({
    @Default(true) bool haveSpecificDates,
    DateTime? startDate,
    DateTime? endDate,
  }) = _WizardState;
}
