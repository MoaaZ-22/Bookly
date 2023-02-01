import 'package:flutter/material.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class BookDetailsMainImage extends StatelessWidget {
  final double padding;
  final double radius;
  const BookDetailsMainImage({
    Key? key, this.padding = 0, this.radius = AppValues.v15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
          ResponsiveValues.mediaQueryWidth(context, padding)),
      child: AspectRatio(
        aspectRatio: AppValues.imageAspectRatio,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(AssetsManager.featuredBook),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(radius)),
        ),
      ),
    );
  }
}