import 'package:flutter/material.dart';
import 'package:goodreads/pages/auth/login_page.dart';
import 'package:goodreads/pages/home/home_page.dart';
import 'package:goodreads/pages/splash/splash_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/': (contexto) => const SplashPage(),
    '/login': (context) => const LoginPage(),
    '/home': (contexto) => const HomePage()
  };

  static String initial = '/';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
