import '../constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controllers.dart';
import '../widgets/widgets.dart';

class DrinkDetails extends GetView<DrinkDetailController> {
  const DrinkDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.drinkDetail.value != null
            ? SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Image.network(controller
                                .drinkDetail.value!.strDrinkThumb
                                .toString()),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                  controller.drinkDetail.value!.strDrink
                                      .toString(),
                                  textAlign: TextAlign.left,
                                  style:
                                      Theme.of(context).textTheme.bigHeading),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailField(
                                  title: "Category",
                                  value: controller
                                      .drinkDetail.value!.strCategory
                                      .toString()),
                              const SizedBox(height: 10.0),
                              DetailField(
                                  title: "Glass",
                                  value: controller.drinkDetail.value!.strGlass
                                      .toString()),
                              const SizedBox(height: 10.0),
                              DetailField(
                                  title: "Instructions",
                                  value: controller
                                      .drinkDetail.value!.strInstructions
                                      .toString()),
                              const SizedBox(height: 10.0),
                              DetailField(
                                  title: "Ingredients",
                                  value:
                                      controller.ingredients.value.toString()),
                            ],
                          ),
                        )
                      ],
                    ),
                    IconButton(
                        padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.yellow,
                        )),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(color: Colors.yellow)),
      ),
    );
  }
}
