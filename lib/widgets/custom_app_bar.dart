import 'package:drink_cocktail_recipes_app/constants/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Text(title.toString(), style: Theme.of(context).textTheme.title),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.yellow,
        ),
        onPressed: () => Get.back(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
