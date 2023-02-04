import 'package:bookly/Features/Home/data/repositories/home_repository.dart';
import 'package:bookly/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/core/resources/routes_manager.dart';
import 'package:bookly/core/resources/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Features/Splash/presentation/views/splash_view.dart';
import 'core/resources/themes_manager.dart';

void main() {
  // Initializing Service Locator for Singleton
  ServiceLocator().init();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(sl.get<HomeRepository>())),
        BlocProvider(create: (context) => NewestBooksCubit(sl.get<HomeRepository>())),
      ],
      child: MaterialApp(
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
        theme: getAppTheme(),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
