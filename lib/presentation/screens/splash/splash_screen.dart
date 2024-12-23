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
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () async {
        bool isLoggedIn =
            await ExpenseDBHelper().isUserLoggedIn(getUserEmail() ?? '');
        isLoggedIn
            ? context.pushReplacement(
                Routes.getHomeRoute(),
              )
            : context.pushReplacement(Routes.getAuthRoute(), extra: true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Animation
            Hero(
              tag: "logo",
              child: Icon(
                MdiIcons.wallet, // Replace with your app logo
                size: 150,
              )
                  .animate()
                  .scale(duration: 600.ms) // Scaling effect
                  .fadeIn(duration: 600.ms), // Fade-in effect
            ),
            const SizedBox(height: 20),

            // App Name Animation
            const Text(
              'ExpenseMate',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
                .animate()
                .fadeIn(duration: 800.ms) // Fade-in animation
                .moveY(begin: 20, end: 0, duration: 800.ms) // Slide up effect
                .then()
                .shake(duration: 200.ms), // Small shake animation

            const SizedBox(height: 10),

            // Tagline Animation
            const Text(
              'Track Your Expenses, Save Smarter!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            )
                .animate()
                .fadeIn(duration: 1.seconds) // Fade-in animation
                .slideY(begin: 0.5, end: 0), // Slide up effect
          ],
        ),
      ),
    );
  }
}
