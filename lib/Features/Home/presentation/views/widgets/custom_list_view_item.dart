import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/assets_manager.dart';
import 'glass_play_button.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: AppValues.imageAspectRatio,
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage(AssetsManager.featuredBook), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(AppValues.v15)
            ),
          ),
        ),
        GlassPlayButton(onTap: (){}),
      ],
    );
  }
}