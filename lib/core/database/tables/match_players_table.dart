// جدول الربط بين المباراة واللاعبين
import 'package:dosh_app/core/database/tables/matches_table.dart';
import 'package:dosh_app/core/database/tables/player_table.dart';
import 'package:drift/drift.dart';

class MatchParticipants extends Table {
  IntColumn get matchId => integer().references(Matches, #id)();
  IntColumn get playerId => integer().references(Players, #id)();

  // لتحديد الفريق (مثلاً 1 للفريق الأول، 2 للفريق الثاني)
  IntColumn get teamSide => integer()();

  @override
  Set<Column> get primaryKey => {matchId, playerId};
}
