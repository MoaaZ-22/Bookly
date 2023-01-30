import 'package:flutter/material.dart';
import '../../../../../core/resources/values_manager.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: AppValues.v16, right: AppValues.v18, top: AppValues.v10, bottom: AppValues.v30),
        itemBuilder: (context, index){
          return const BestSellerListViewItem();
        }, separatorBuilder: (context, index) => const SizedBox(height: AppValues.v10,), itemCount: 10);
  }
}