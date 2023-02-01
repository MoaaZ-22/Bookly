import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class CustomSearchTextFormFiled extends StatelessWidget {
  const CustomSearchTextFormFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppValues.v16, right: AppValues.v16),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: StringsManager.search,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: AppValues.v16,
              ),
              splashRadius: AppValues.v20,
            )),
      ),
    );
  }
}