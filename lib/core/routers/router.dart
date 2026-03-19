


import 'package:dosh_app/core/database/db.dart';
import 'package:dosh_app/features/home/presentation/view/home.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  ref.listen(appDatabaseProvider, (previous, next) {
    // When the database is initialized, refresh the router to ensure it can access the database
    if (next != null) {
      ref.refresh(appRouterProvider);
    }
  });
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
