import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../auth/login.dart';
import '../auth/signup.dart';

import '../drawer/diagnostic/diagnostic.dart';
import '../drawer/doctor_bar/doctor_bar.dart';
import '../drawer/home_bar/home_bar.dart';
import '../drawer/medine_bar/medine_bar.dart';
import '../drawer/more_bar/more_bar.dart';
import '../home.dart';
import '../practice/practice_test.dart';
import 'const_routes.dart';
import 'error.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
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
      GoRoute(
          name: MyAppRouterConstants.homeBarScreenRoutes,
          path: '/home_bar',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomeBarScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.medicineBarScreenRoutes,
          path: '/medicine_bar',
          pageBuilder: (context, state) {
            return const MaterialPage(child: MedicineBarScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.doctorBarScreenRoutes,
          path: '/doctor_bar',
          pageBuilder: (context, state) {
            return const MaterialPage(child: DoctorBarScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.diagnosticBarScreenRoutes,
          path: '/diagnostic-bar',
          pageBuilder: (context, state) {
            return const MaterialPage(child: DiagnosticBarScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.moreBarScreenRoutes,
          path: '/more_bar',
          pageBuilder: (context, state) {
            return const MaterialPage(child: MoreBarScreen());
          }),
      GoRoute(
          name: MyAppRouterConstants.practiceRouterName,
          path: '/practice_screen',
          pageBuilder: (context, state) {
            return const MaterialPage(child: PracticeScreen());
          }),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: NotFoundScreen());
    },
  );
}
