import 'package:bookly/Features/Home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:flutter/material.dart';
import '../resources/assets_manager.dart';
import '../resources/colors_manager.dart';
import '../resources/fonts_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/values_manager.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppValues.v8),
      onTap: ()=> Navigator.pushNamed(context, Routes.bookDetailsRoute),
      child: SizedBox(
        height: ResponsiveValues.mediaQueryHeight(context, AppValues.v0_36),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: AppValues.bestSellerAspectRatio,
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
                    width: ResponsiveValues.mediaQueryWidth(context, AppValues.v0_5),
                    child: Text('Harry Potter and the Goblet of Fire',
                      maxLines: AppValues.v2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: AppValues.v20, fontFamily: FontConstance.fontFamily2, color: ColorsManager.white),),
                  ),
                  const SizedBox(height: AppValues.v8,),
                  SizedBox(
                    width: ResponsiveValues.mediaQueryWidth(context, AppValues.v0_5),
                    child: Text('J.K. Rowling',
                      maxLines: AppValues.v1.toInt(),
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
                            TextSpan(text: '???', style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: AppValues.v16)),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const CustomRateWidget(
                        mainAxisAlignment: MainAxisAlignment.end,
                      )
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