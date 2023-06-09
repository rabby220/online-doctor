import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../auth/login.dart';
import '../auth/signup.dart';
import '../home.dart';
import 'const_routes.dart';
import 'error.dart';

/*  static final GoRouter _router = GoRouter(

    errorBuilder: (context, state) => const NotFoundScreen(), routes: [],

  );

/*  static GoRouter get router => _router;*/
 // static final _rootNavigatorKey = GlobalKey<NavigatorState>();
//  static final _shellNavigatorKey = GlobalKey<NavigatorState>();*/
class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: '/signup',
   //debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,

    routes: [
      GoRoute(
          name: MyAppRouterConstants.homeRouterName,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomeScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.loginRouterName,
          path: '/login',
          pageBuilder: (context, state) {
            return const MaterialPage(child: LoginScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.signupRouterName,
          path: '/signup',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SignUpScreen());
          }),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: NotFoundScreen());
    },
  );
}
