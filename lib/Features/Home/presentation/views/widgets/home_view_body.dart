import 'package:animate_do/animate_do.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/book_list_view.dart';
import 'custom_home_app_bar.dart';
import 'featured_book_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverAppBar(
          elevation: AppValues.v0,
          flexibleSpace: CustomHomeAppBar(),
          snap: true,
          floating: true,
          automaticallyImplyLeading: false,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppValues.v4,
              ),
              FadeIn(
                  duration: const Duration(milliseconds: AppValues.durationV350),
                  child: const FeaturedBookListView()),
              const SizedBox(
                height: AppValues.v24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppValues.v16),
                child: Text(
                  StringsManager.bestSeller,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontSize: AppValues.v18),
                ),
              ),
            ],
          ),
        ),
         SliverToBoxAdapter(
          child: FadeIn(
              duration: const Duration(milliseconds: AppValues.durationV350),
              child: const BookListView()),
        )
      ],
    );
  }
}
