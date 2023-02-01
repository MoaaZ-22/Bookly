import 'package:bookly/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Search/presentation/views/search_view.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String homeRoute = '/home';
  static const String bookDetailsRoute = '/bookDetails';
  static const String searchRoute = '/search';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case Routes.bookDetailsRoute:
        return MaterialPageRoute(builder: (context) => const BookDetailsView());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (context) => const SearchView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(StringsManager.noRouteFound),
              ),
              body: const Center(child: Text(StringsManager.noRouteFound)),
            ));
  }
}
