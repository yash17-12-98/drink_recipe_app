import 'package:get/get.dart';
import '../models/models.dart';
import '../services/services.dart';
import 'controllers.dart';

class DrinkCategoriesController extends BaseController {
  final BaseApiService service;

  DrinkCategoriesController(this.service);

  Rx<DrinkCategories> drinkCategories = DrinkCategories().obs;

  @override
  void onInit() {
    getDrinkCategories();
    super.onInit();
  }

  Future<void> getDrinkCategories() async {
    final response = await service.getResponse('list.php?c=list');

    print("Response: $response");
    drinkCategories.value = DrinkCategories.fromJson(response);

  }
}
