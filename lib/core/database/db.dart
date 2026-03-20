// i want to create a database for my app using drift package in flutter, i have 3 tables, players, matches and rounds, and a linking table between matches and players, i want to create the database file that will include all these tables and the necessary imports

import 'package:dosh_app/core/database/connection/db_connections.dart';
import 'package:dosh_app/core/database/tables/match_players_table.dart';
import 'package:dosh_app/core/database/tables/matches_table.dart';
import 'package:dosh_app/core/database/tables/player_table.dart';
import 'package:dosh_app/core/database/tables/rounded.table.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'db.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  return AppDatabase(ref.watch(appDatabaseConnectionProvider));
}

@DriftDatabase(tables: [Players, Matches, Rounds, MatchParticipants])
class AppDatabase extends _$AppDatabase {
  AppDatabase(LazyDatabase super.lazyDb);
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      try {
        await m.createAll();
      } catch (e) {
        debugPrint('Error creating database: $e');
        rethrow;
      }
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      // Handle database upgrades here
    },
  );
}
