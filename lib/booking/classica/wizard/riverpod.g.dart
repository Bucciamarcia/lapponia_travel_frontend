// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Wizard)
const wizardProvider = WizardProvider._();

final class WizardProvider extends $NotifierProvider<Wizard, WizardState> {
  const WizardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wizardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wizardHash();

  @$internal
  @override
  Wizard create() => Wizard();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WizardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WizardState>(value),
    );
  }
}

String _$wizardHash() => r'62bc715f50992ec6cb452c4e852e2c7b1169cb5a';

abstract class _$Wizard extends $Notifier<WizardState> {
  WizardState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<WizardState, WizardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WizardState, WizardState>,
              WizardState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
