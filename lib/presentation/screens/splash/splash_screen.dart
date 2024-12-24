// ignore_for_file: use_build_context_synchronously

import 'package:expense_mate/config/route/route_constants.dart';
import 'package:expense_mate/core/utilities/getters/get_user_mail.dart';
import 'package:expense_mate/data/datasources/expense_db_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      authCheck(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SplashLogoWidget(),
            const SizedBox(height: 20),
            const SplashTitleWidget(),
            const SizedBox(height: 10),
            const SplashSubtitleWidget()
                .animate()
                .fadeIn(duration: 1.seconds)
                .slideY(begin: 0.5, end: 0),
          ],
        ),
      ),
    );
  }

  void authCheck(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async {
      bool isLoggedIn =
          await ExpenseDBHelper().isUserLoggedIn(getUserEmail() ?? '');
      isLoggedIn
          ? context.pushReplacement(
              Routes.getHomeRoute(),
            )
          : context.pushReplacement(Routes.getAuthRoute(), extra: true);
    });
  }
}

class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo",
      child: Icon(
        MdiIcons.wallet, // Replace with your app logo
        size: 150,
      )
          .animate()
          .scale(duration: 600.ms) // Scaling effect
          .fadeIn(duration: 600.ms), // Fade-in effect
    );
  }
}

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'ExpenseMate',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class SplashSubtitleWidget extends StatelessWidget {
  const SplashSubtitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Track Your Expenses, Save Smarter!',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white70,
      ),
    );
  }
}
