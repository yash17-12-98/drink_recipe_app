import 'package:get/get.dart';
import '../controllers/controllers.dart';

class DrinkDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DrinkDetailController>(DrinkDetailController(Get.find()));
  }
}
