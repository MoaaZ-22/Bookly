import 'package:bookly/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/values_manager.dart';
import 'custom_list_view_item.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: ResponsiveValues.mediaQueryHeight(context, AppValues.v0_59),
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: AppValues.v16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  CustomListViewItem(imageUrl: state.bookModel!.items![index].volumeInfo!.imageLinks!.thumbnail!,);
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: AppValues.v8,
                    ),
                itemCount: state.bookModel!.items!.length),
          );
        }
        else if(state is FeaturedBooksFailure)
          {
            return CustomErrorWidget(errorMessage: state.errorMessage,);
          }
        else
          {
            return const CustomLoadingIndicator();
          }
      },
    );
  }
}
