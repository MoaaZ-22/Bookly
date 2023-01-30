import 'package:flutter/material.dart';

import '../../../../../core/resources/values_manager.dart';
import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveValues.mediaQueryHeight(context, AppValues.v0_59),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
          padding:   const EdgeInsets.symmetric(horizontal: AppValues.v16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {return const CustomListViewItem();},
          separatorBuilder: (context, index) => const SizedBox(
            width: AppValues.v8,
          ),
          itemCount: 5),
    );
  }
}