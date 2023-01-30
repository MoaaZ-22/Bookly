import 'package:animate_do/animate_do.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/strings_manager.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      animate: true,
      from: 40,
      duration: const Duration(milliseconds: AppValues.duration500),
      child: const Text(
        StringsManager.readFreeBooks,
        textAlign: TextAlign.center,
      ),
    );
  }
}