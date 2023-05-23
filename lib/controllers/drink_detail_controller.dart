import 'package:get/get.dart';
import '../models/models.dart';
import '../services/services.dart';
import 'controllers.dart';

class DrinkDetailController extends BaseController {
  String? drinkId;
  final BaseApiService service;
  final drinkDetail = Rxn<DrinkDetails>();
  final ingredients = Rxn<String>();

  DrinkDetailController(this.service);

  @override
  void onInit() {
    drinkId = Get.arguments['idDrink'];
    getDrinkDetails();
    super.onInit();
  }

  Future<void> getDrinkDetails() async {
    final response = await service.getResponse('lookup.php?i=$drinkId');
    final responseData = response['drinks'][0];

    drinkDetail.value = DrinkDetails.fromJson(responseData);

    ingredients.value =
        "${drinkDetail.value!.strIngredient1}, ${drinkDetail.value!.strIngredient2}";
  }
}
