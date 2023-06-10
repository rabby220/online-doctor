import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../auth/login.dart';
import '../auth/signup.dart';
import '../drawer/find_doctor/find_doctor.dart';
import '../drawer/lab_test/lab_test.dart';
import '../drawer/medicine/medine.dart';
import '../drawer/surgeries/surgeries.dart';
import '../drawer/video_consult/video_consult.dart';
import '../home.dart';
import '../practice/practice_test.dart';
import 'const_routes.dart';
import 'error.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: '/practice_screen',
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
          name: MyAppRouterConstants.findDoctorRouterName,
          path: '/find_doctor',
          pageBuilder: (context, state) {
            return const MaterialPage(child: FindDoctorScreen());
          }),

      GoRoute(
          name: MyAppRouterConstants.videoConsultRouterName,
          path: '/video_consult',
          pageBuilder: (context, state) {
            return const MaterialPage(child: VideoConsultScreen());
          }),


      GoRoute(
          name: MyAppRouterConstants.medicineRouterName,
          path: '/medicine',
          pageBuilder: (context, state) {
            return const MaterialPage(child: MedicineScreen());
          }),

      GoRoute(
          name: MyAppRouterConstants.labTestRouterName,
          path: '/lab-test',
          pageBuilder: (context, state) {
            return const MaterialPage(child: LabTestScreen());
          }),

      GoRoute(
          name: MyAppRouterConstants.surgeryRouterName,
          path: '/surgery',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SurgeriesScreen());
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
