import 'package:expense_mate/config/route/route_constants.dart';
import 'package:expense_mate/presentation/screens/add_expense/add_expense_screen.dart';
import 'package:expense_mate/presentation/screens/authentication/auth_screen.dart';
import 'package:expense_mate/presentation/screens/authentication/login_screen.dart';
import 'package:expense_mate/presentation/screens/authentication/registration_screen.dart';
import 'package:expense_mate/presentation/screens/home/expenses_screen.dart';
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
      pageBuilder: (context, state) => MaterialPage(
          child: AuthScreen(
        isLogin: state.extra as bool,
      )),
    ),
    GoRoute(
      name: Routes.splash,
      path: Routes.getSplashRoute(),
      pageBuilder: (context, state) =>
          const MaterialPage(child: SplashScreen()),
    ),
    GoRoute(
      name: Routes.home,
      path: Routes.getHomeRoute(),
      pageBuilder: (context, state) =>
          const MaterialPage(child: ExpensesScreen()),
    ),
    GoRoute(
      name: Routes.addExpense,
      path: Routes.getAddExpenseRoute(),
      pageBuilder: (context, state) =>
          const MaterialPage(child: AddExpenseScreen()),
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
