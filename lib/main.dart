import 'package:bookly/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'Features/Splash/presentation/views/splash_view.dart';
import 'core/resources/themes_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
