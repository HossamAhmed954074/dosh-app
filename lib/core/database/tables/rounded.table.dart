import 'package:dosh_app/core/database/tables/matches_table.dart';
import 'package:drift/drift.dart';

class Rounds extends Table {
  // Composite Primary Key is usually match_id + round_number
  IntColumn get matchId => integer().references(Matches, #id)();
  IntColumn get roundNumber => integer()();
  IntColumn get teamAScore => integer().withDefault(const Constant(0))();
  IntColumn get teamBScore => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {matchId, roundNumber};
}
