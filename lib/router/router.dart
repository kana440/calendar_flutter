import 'package:kwg_flutter/importer.dart';
import 'package:go_router/go_router.dart';
import 'package:kwg_flutter/ui/view/category_list_View.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../ui/view/home_view.dart';
import '../ui/view/login_view.dart';
import '../ui/view/logout_view.dart';

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
        path: '/login',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/logout',
        builder: (context, state) => const LogoutView(),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => const CategoryListView(),
      ),
    ],
  );
}
