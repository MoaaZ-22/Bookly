import 'package:bookly/Features/Home/presentation/views/widgets/custom_rate_widget.dart';
import 'package:bookly/core/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/resources/values_manager.dart';
import 'book_details_list_view.dart';
import 'book_details_main_image.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_details_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScroll) {
        overScroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: AppValues.v43),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const BookDetailsMainImage(
              padding: AppValues.v0_28,
            ),
            const SizedBox(
              height: AppValues.v43,
            ),
            Text(
              'The Jungle Book',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: AppValues.v4,
            ),
            Text(
              'Rudyard Kipling',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: AppValues.v18,
                  ),
            ),
            const SizedBox(
              height: AppValues.v14,
            ),
            const CustomRateWidget(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: AppValues.v30,
            ),
            const CustomBookDetailsButton(),
            const SizedBox(
              height: AppValues.v43,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppValues.v20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  StringsManager.youCanAlsoLike,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontSize: AppValues.v14,
                      ),
                ),
              ),
            ),
            const SizedBox(
              height: AppValues.v16,
            ),
            const BookDetailsListView()
          ],
        ),
      ),
    );
  }
}
