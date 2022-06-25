import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodreads/pages/splash/splash_page.dart';
import 'package:goodreads/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GoodreadsApp());
}

class GoodreadsApp extends StatefulWidget {
  const GoodreadsApp({Key? key}) : super(key: key);

  @override
  State<GoodreadsApp> createState() => _GoodreadsAppState();
}

class _GoodreadsAppState extends State<GoodreadsApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Goodreads',
            debugShowCheckedModeBanner: false,
            scaffoldMessengerKey: Routes.rootScaffoldMessengerKey,
            initialRoute: Routes.initial,
            routes: Routes.list,
            navigatorKey: Routes.navigatorKey,
          );
        });
  }
}
