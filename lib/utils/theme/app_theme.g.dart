// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemeProvider)
final themeProviderProvider = ThemeProviderProvider._();

final class ThemeProviderProvider
    extends $NotifierProvider<ThemeProvider, ThemeData> {
  ThemeProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeProviderHash();

  @$internal
  @override
  ThemeProvider create() => ThemeProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$themeProviderHash() => r'7af9b1f2c26ed0531e732741fffcf912e7796320';

abstract class _$ThemeProvider extends $Notifier<ThemeData> {
  ThemeData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeData, ThemeData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeData, ThemeData>,
              ThemeData,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
