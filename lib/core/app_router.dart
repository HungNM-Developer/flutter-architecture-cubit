// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/home_screen/home_screen.dart';
import 'constants/routes/route_name.dart';
import 'constants/routes/route_path.dart';

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: RoutePath.homeScreen,
    routes: <GoRoute>[
      GoRoute(
        path: RoutePath.homeScreen,
        name: RouteName.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
