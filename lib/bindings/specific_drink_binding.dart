import 'package:get/get.dart';
import '../controllers/controllers.dart';

class SpecificDrinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SpecificDrinkController>(SpecificDrinkController(Get.find()));
  }
}
