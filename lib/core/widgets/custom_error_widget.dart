import 'package:bookly/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import '../resources/values_manager.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? errorMessage;

  const CustomErrorWidget({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: ResponsiveValues.mediaQueryHeight(context, AppValues.v0_59),
      child: Text(
        'Error $errorMessage',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: ColorsManager.red, fontSize: AppValues.v16),
      ),
    );
  }
}
