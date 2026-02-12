// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(splashImage)
const splashImageProvider = SplashImageProvider._();

final class SplashImageProvider
    extends
        $FunctionalProvider<
          AsyncValue<BookingHomeAssetUrls>,
          BookingHomeAssetUrls,
          FutureOr<BookingHomeAssetUrls>
        >
    with
        $FutureModifier<BookingHomeAssetUrls>,
        $FutureProvider<BookingHomeAssetUrls> {
  const SplashImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashImageHash();

  @$internal
  @override
  $FutureProviderElement<BookingHomeAssetUrls> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<BookingHomeAssetUrls> create(Ref ref) {
    return splashImage(ref);
  }
}

String _$splashImageHash() => r'988b1f321c7ef4130f3cfcf65243359e269796c3';
