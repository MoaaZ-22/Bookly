import 'package:bookly/Features/Splash/presentation/views/widgets/sliding_Text.dart';
import 'package:bookly/core/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManager.logo,
            width: ResponsiveValues.mediaQueryWidth(context, AppValues.v0_55)),
        const SizedBox(
          height: AppValues.v15,
        ),
        const SlidingText()
      ],
    );
  }



  void navigateToHome() {
    Future.delayed(const Duration(seconds: AppValues.v2), ()
    {
      Navigator.pushReplacementNamed(context, Routes.homeRoute);
    });
  }
}
