import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constants.dart';
import '../controllers/controllers.dart';
import '../routes/routes.dart';
import '../widgets/widgets.dart';

class SpecificDrinks extends GetView<SpecificDrinkController> {
  const SpecificDrinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: controller.category.toString()),
      body: SafeArea(
        child: Obx(
          () => controller.specificDrinks.isNotEmpty
              ? GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.specificDrinks.length,
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    final specificDrinks = controller.specificDrinks[index];
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.drinkDetails,
                            arguments: {'idDrink': specificDrinks.idDrink});
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: FadeInImage.assetNetwork(
                                placeholder: ImagePath.drinks,
                                image: specificDrinks.strDrinkThumb.toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(specificDrinks.strDrink.toString(),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.heading),
                        ],
                      ),
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(color: Colors.yellow)),
        ),
      ),
    );
  }
}
