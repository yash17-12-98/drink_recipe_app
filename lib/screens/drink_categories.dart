import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constants.dart';
import '../controllers/controllers.dart';
import '../routes/routes.dart';
import '../widgets/widgets.dart';

class DrinkCategories extends GetView<DrinkCategoriesController> {
  const DrinkCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Drink Categories'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => controller.drinkCategories.value.drinks != null
                ? ListView.separated(
                    shrinkWrap: true,
                    itemCount: controller.drinkCategories.value.drinks!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final drinks =
                          controller.drinkCategories.value.drinks![index];
                      return ListTile(
                        onTap: () {
                          Get.toNamed(Routes.specificDrinks,
                              arguments: {'category': drinks.strCategory});
                        },
                        tileColor: Colors.yellow.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        title: Text(
                          drinks.strCategory.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        ),
                        trailing: Image.asset(ImagePath.drinks,
                            color: Colors.yellow, scale: 20.0),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 5.0),
                  )
                : const Center(
                    child: CircularProgressIndicator(
                      color: Colors.yellow,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
