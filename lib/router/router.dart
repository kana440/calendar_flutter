import 'package:kwg_flutter/importer.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/view/home_view.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/tab',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/eee',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
