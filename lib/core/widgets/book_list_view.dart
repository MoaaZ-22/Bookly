import 'package:flutter/material.dart';
import '../resources/values_manager.dart';
import 'book_list_view_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: AppValues.v16, right: AppValues.v18, top: AppValues.v10, bottom: AppValues.v30),
        itemBuilder: (context, index){
          return const BookListViewItem();
        }, separatorBuilder: (context, index) => const SizedBox(height: AppValues.v10,), itemCount: 10);
  }
}