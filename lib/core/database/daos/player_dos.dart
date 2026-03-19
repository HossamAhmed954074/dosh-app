import 'package:dosh_app/core/database/db.dart';
import 'package:dosh_app/core/database/tables/player_table.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'player_dos.g.dart';

@Riverpod(keepAlive: true)
PlayerDao playerDao(Ref ref) {
  return PlayerDao(ref.watch(appDatabaseProvider));
}

@DriftAccessor(tables: [Players])
class PlayerDao extends DatabaseAccessor<AppDatabase> with _$PlayerDaoMixin {
  final AppDatabase db;
  PlayerDao(this.db) : super(db);

  Future<List<Player>> getAllPlayers() => select(players).get();

  Future<int> insertPlayer(PlayersCompanion player) =>
      into(players).insert(player);

  Future updatePlayer(int id, PlayersCompanion player) =>
      (update(players)..where((tbl) => tbl.id.equals(id))).write(player);

  Future deletePlayer(int id) =>
      (delete(players)..where((tbl) => tbl.id.equals(id))).go();

  // get player by id
  Future<Player?> getPlayerById(int id) =>
      (select(players)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  // search players by name
  Future<List<Player>> searchPlayersByName(String name) =>
      (select(players)..where((tbl) => tbl.name.like('%$name%'))).get();
}
