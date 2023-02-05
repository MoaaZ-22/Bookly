import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'glass_play_button.dart';

class CustomListViewItem extends StatelessWidget {
  final String imageUrl;
  const CustomListViewItem({Key? key,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: AppValues.imageAspectRatio,
          child: Container(
            decoration: BoxDecoration(
                image:  DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(AppValues.v15)
            ),
          ),
        ),
        GlassPlayButton(onTap: (){}),
      ],
    );
  }
}