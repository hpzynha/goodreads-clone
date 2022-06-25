import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:goodreads/helpers/app_colors.dart';
import 'package:goodreads/pages/auth/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png'),
        duration: 2000,
        backgroundColor: backgroundColor,
        nextScreen: const LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
      )),
    );
  }
}
