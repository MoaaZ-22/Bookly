import 'package:flutter/material.dart';
import '../../../../../core/resources/values_manager.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: AppValues.v12, horizontal: AppValues.v16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close, size: AppValues.v20,), splashRadius: AppValues.v25,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined, size: AppValues.v20,), splashRadius: AppValues.v25,)
        ],
      ),
    );
  }
}