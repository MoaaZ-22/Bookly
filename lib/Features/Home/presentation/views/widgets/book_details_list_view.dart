import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';
import 'book_details_main_image.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveValues.mediaQueryHeight(context, AppValues.v0_4),
      child: ListView.separated(
          padding: const EdgeInsets.only(left: AppValues.v20, right: AppValues.v16),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {return const BookDetailsMainImage(radius: AppValues.v10,);},
          separatorBuilder: (context, index) => const SizedBox(
            width: AppValues.v10,
          ),
          itemCount: 5),
    );
  }
}