import 'package:bookly/core/resources/strings_manager.dart';
import 'package:bookly/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
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
          flexibleSpace: CustomAppBar(),
          snap: true,
          floating: true,

          automaticallyImplyLeading: false,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppValues.v4,),
              const FeaturedBookListView(),
              const SizedBox(height: AppValues.v24,),
              Padding(
                padding:   const EdgeInsets.symmetric(horizontal: AppValues.v16),
                child: Text(StringsManager.bestSeller, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: AppValues.v18),),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}




