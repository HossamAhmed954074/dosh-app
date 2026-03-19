import 'package:drift/drift.dart';

class Players extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 2, max: 50)();
  // Suggestion: Use a nullable text for avatar path or URL
  BoolColumn get isOwner => boolean().withDefault(const Constant(false))();
  TextColumn get avatar => text().nullable()();
  IntColumn get totalWins => integer().withDefault(const Constant(0))();
}
