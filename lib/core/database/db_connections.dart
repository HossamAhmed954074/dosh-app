


// i want to create db connection and use riverpod to provide the database instance to the app, i want to create a file for the db connection and include the necessary imports and code to create the database instance using drift package in flutter
import 'dart:io';
import 'package:dosh_app/core/database/db.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'db_connections.g.dart';

@Riverpod(keepAlive: true)
LazyDatabase appDatabaseConnection(Ref ref) {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'dosh.sqlite'));
    return NativeDatabase(file);
  });
}


