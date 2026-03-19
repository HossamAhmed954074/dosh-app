import 'package:dosh_app/core/database/tables/player_table.dart';
import 'package:drift/drift.dart';

class Matches extends Table {
  IntColumn get id => integer().autoIncrement()();
  // Suggestion: Use DateTime for date; Drift converts to Unix timestamps/ISO8601
  DateTimeColumn get date => dateTime().withDefault(Constant(DateTime.now()))();
  TextColumn get location => text().nullable()();
  BoolColumn get isFinished => boolean().withDefault(const Constant(false))();

  // Suggestion: Foreign key to Players.id
  IntColumn get winnerId => integer().nullable().references(Players, #id)();
}
