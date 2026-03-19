import 'package:dosh_app/core/database/db.dart';
import 'package:dosh_app/core/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(appDatabaseProvider); // Ensure the database is initialized
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dosh App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
