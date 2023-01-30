import 'package:bookly/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: ColorsManager.primary,
      statusBarIconBrightness: Brightness.light,// navigation bar color
      statusBarColor: ColorsManager.primary, // status bar color
    ));
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
