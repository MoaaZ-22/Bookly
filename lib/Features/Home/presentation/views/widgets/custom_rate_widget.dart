import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class CustomRateWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const CustomRateWidget({Key? key, required this.mainAxisAlignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: ColorsManager.yellow, size: AppValues.v16,),
        const SizedBox(width: AppValues.v6,),
        Text('4.0', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: AppValues.v16, color: ColorsManager.white),),
        const SizedBox(width: AppValues.v9,),
        Text('(2390)', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: AppValues.v16,color: ColorsManager.grey),)
      ],
    );
  }
}
