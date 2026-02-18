import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'riverpod.g.dart';
part 'riverpod.freezed.dart';

@Riverpod(keepAlive: true)
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

  void changePeopleNumber(int adults, int minors) {
    var toReturn = <WizardPpl>[];
    for (var i = 0; i < adults; i++) {
      toReturn.add(const WizardPpl(type: WizardPersona.adult));
    }
    for (var i = 0; i < minors; i++) {
      toReturn.add(const WizardPpl(type: WizardPersona.minor, age: 0));
    }
    state = state.copyWith(participants: toReturn);
  }

  void changeSingleChildAge(int i, int v) {
    final participants = state.participants;
    final minors = participants
        .where((p) => p.type == WizardPersona.minor)
        .toList();

    minors[i] = WizardPpl(type: WizardPersona.minor, age: v);

    state = state.copyWith(
      participants: [
        ...participants.where((p) => p.type == WizardPersona.adult),
        ...minors,
      ],
    );
  }

  void changeTravelMode(WizardTravelMode v) {
    state = state.copyWith(persona: v);
  }
}

@freezed
sealed class WizardState with _$WizardState {
  const WizardState._();
  const factory WizardState({
    @Default(true) bool haveSpecificDates,
    DateTime? startDate,
    DateTime? endDate,
    @Default([]) List<WizardPpl> participants,
    WizardTravelMode? persona,
  }) = _WizardState;

  int get minorsNumber =>
      participants.where((p) => p.type == WizardPersona.minor).length;
}

@freezed
sealed class WizardPpl with _$WizardPpl {
  const factory WizardPpl({required WizardPersona type, int? age}) = _WizardPpl;
}

enum WizardPersona { adult, minor }

enum WizardTravelMode { vacanzaCompleta, soloEsperienze }
