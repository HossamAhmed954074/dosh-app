// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_connections.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDatabaseConnection)
final appDatabaseConnectionProvider = AppDatabaseConnectionProvider._();

final class AppDatabaseConnectionProvider
    extends $FunctionalProvider<LazyDatabase, LazyDatabase, LazyDatabase>
    with $Provider<LazyDatabase> {
  AppDatabaseConnectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseConnectionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseConnectionHash();

  @$internal
  @override
  $ProviderElement<LazyDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LazyDatabase create(Ref ref) {
    return appDatabaseConnection(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LazyDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LazyDatabase>(value),
    );
  }
}

String _$appDatabaseConnectionHash() =>
    r'9923dd454a69f95488f32cf24fa2d46391b02cdd';
