import 'package:get/get.dart';
import '../models/models.dart';
import '../services/services.dart';
import 'controllers.dart';

class SpecificDrinkController extends BaseController {
  String? category;
  final BaseApiService service;
  RxList<SpecificDrinks> specificDrinks = <SpecificDrinks>[].obs;

  SpecificDrinkController(this.service);

  @override
  void onInit() {
    category = Get.arguments['category'];
    getSpecificDrinks();
    super.onInit();
  }

  Future<void> getSpecificDrinks() async {
    final response = await service.getResponse('filter.php?c=$category');
    final responseData = response['drinks'] as List;

    specificDrinks.clear();
    responseData
        .map((e) => specificDrinks.add(SpecificDrinks.fromJson(e)))
        .toList();
  }
}
