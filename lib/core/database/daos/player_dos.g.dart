// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dos.dart';

// ignore_for_file: type=lint
mixin _$PlayerDaoMixin on DatabaseAccessor<AppDatabase> {
  $PlayersTable get players => attachedDatabase.players;
  PlayerDaoManager get managers => PlayerDaoManager(this);
}

class PlayerDaoManager {
  final _$PlayerDaoMixin _db;
  PlayerDaoManager(this._db);
  $$PlayersTableTableManager get players =>
      $$PlayersTableTableManager(_db.attachedDatabase, _db.players);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(playerDao)
final playerDaoProvider = PlayerDaoProvider._();

final class PlayerDaoProvider
    extends $FunctionalProvider<PlayerDao, PlayerDao, PlayerDao>
    with $Provider<PlayerDao> {
  PlayerDaoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerDaoProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerDaoHash();

  @$internal
  @override
  $ProviderElement<PlayerDao> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PlayerDao create(Ref ref) {
    return playerDao(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayerDao value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayerDao>(value),
    );
  }
}

String _$playerDaoHash() => r'd201b8e6a9a2a4805fde49d9da31b50f076992db';
