import 'package:expense_mate/config/route/route_constants.dart';
import 'package:expense_mate/config/route/transition.dart';
import 'package:expense_mate/presentation/screens/add_expense/add_expense_screen.dart';
import 'package:expense_mate/presentation/screens/authentication/auth_screen.dart';
import 'package:expense_mate/presentation/screens/home/home_screen.dart';
import 'package:expense_mate/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: Routes.getSplashRoute(),
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: Routes.auth,
      path: Routes.getAuthRoute(),
      pageBuilder: (context, state) => buildPageWithFadeTransition(
           AuthScreen(
        isLogin: state.extra as bool,
      ),state),
    ),
    GoRoute(
      name: Routes.splash,
      path: Routes.getSplashRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const SplashScreen(), state),
    ),
    GoRoute(
      name: Routes.home,
      path: Routes.getHomeRoute(),
      pageBuilder: (context, state) =>
          buildPageWithFadeTransition(const HomeScreen(), state),
    ),
    GoRoute(
      name: Routes.addExpense,
      path: Routes.getAddExpenseRoute(),
      pageBuilder: (context, state) =>
           buildPageWithFadeTransition( const AddExpenseScreen(),state),
    ),
  ],
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text("Page not fount"),
    ),
  ),
  redirect: (context, state) {
    return null;
  },
);
