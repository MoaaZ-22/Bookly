import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/widgets/book_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_search_text_form_filed.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (_) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: AppValues.v16,
            ),
          ),
          const SliverAppBar(
            elevation: AppValues.v0,
            flexibleSpace: CustomSearchTextFormFiled(),
            snap: true,
            floating: true,
            automaticallyImplyLeading: false,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: AppValues.v16,
                right: AppValues.v16,
                top: AppValues.v16,
              ),
              child: Text(
                StringsManager.searchResult,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(fontSize: AppValues.v16),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: BookListView(),
          )
        ],
      ),
    );
  }
}
