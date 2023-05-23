import 'package:get/get.dart';
import '../controllers/controllers.dart';
import '../services/services.dart';

class DrinkCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseApiService>(() => NetworkApiService());
    Get.put(DrinkCategoriesController(Get.find()));
  }
}
