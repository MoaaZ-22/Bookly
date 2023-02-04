import 'package:bookly/core/resources/colors_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double size;
  const CustomLoadingIndicator({Key? key, this.size = AppValues.v0_59,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveValues.mediaQueryHeight(context, size),
      child: const Center(
        child: CircularProgressIndicator(
          color: ColorsManager.yellow,
          strokeWidth: AppValues.v4,
        ),
      ),
    );
  }
}
