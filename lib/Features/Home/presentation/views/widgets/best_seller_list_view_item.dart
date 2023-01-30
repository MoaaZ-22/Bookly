import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/fonts_manager.dart';
import '../../../../../core/resources/routes_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppValues.v8),
      onTap: ()=> Navigator.pushNamed(context, Routes.bookDetailsRoute),
      child: SizedBox(
        height: ResponsiveValues.mediaQueryHeight(context, 0.36),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 3.9,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage(AssetsManager.featuredBook), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(AppValues.v8)
                ),
              ),
            ),
            const SizedBox(width: AppValues.v20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// ToDo : Change Text With Modle Text
                  SizedBox(
                    width: ResponsiveValues.mediaQueryWidth(context, 0.5),
                    child: Text('Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: AppValues.v20, fontFamily: FontConstance.fontFamily2, color: ColorsManager.white),),
                  ),
                  const SizedBox(height: AppValues.v8,),
                  SizedBox(
                    width: ResponsiveValues.mediaQueryWidth(context, 0.5),
                    child: Text('J.K. Rowling',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium,),
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: '19.99 ',
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: <TextSpan>[
                            TextSpan(text: '€', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: AppValues.v16)),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(FontAwesomeIcons.solidStar, color: ColorsManager.yellow, size: AppValues.v16,),
                      const SizedBox(width: AppValues.v6,),
                      Text('4.0', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: AppValues.v16, color: ColorsManager.white),),
                      const SizedBox(width: 9,),
                      Text('(2390)', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: AppValues.v16,),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}