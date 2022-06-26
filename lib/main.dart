import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goodreads/firebase_options.dart';
import 'package:goodreads/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
