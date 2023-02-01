import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: AppValues.v12, horizontal: AppValues.v16),
      child: Row(
        children: [
          SvgPicture.asset(AssetsManager.logo, height: AppValues.v20, width: AppValues.v75,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: AppValues.v20,), splashRadius: AppValues.v25,)
        ],
      ),
    );
  }
}