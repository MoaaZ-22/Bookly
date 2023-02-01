import 'package:flutter/material.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class CustomBookDetailsButton extends StatelessWidget {
  const CustomBookDetailsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          start: AppValues.v20, end: AppValues.v20),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              height:
                  ResponsiveValues.mediaQueryHeight(context, AppValues.v0_15),
              color: ColorsManager.white,
              minWidth: double.infinity,
              elevation: AppValues.v0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppValues.v15),
                      bottomLeft: Radius.circular(AppValues.v15))),
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                  text: '19.99 ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: ColorsManager.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '€',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: AppValues.v16,
                            color: ColorsManager.black)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
                height:
                    ResponsiveValues.mediaQueryHeight(context, AppValues.v0_15),
                color: ColorsManager.lightRed,
                minWidth: double.infinity,
                elevation: AppValues.v0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppValues.v15),
                        bottomRight: Radius.circular(AppValues.v15))),
                onPressed: () {},
                child: Text(
                  StringsManager.freePreview,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: AppValues.v16),
                )),
          )
        ],
      ),
    );
  }
}
