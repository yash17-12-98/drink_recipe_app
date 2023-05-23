import 'dart:async';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'controllers.dart';

class SplashController extends BaseController {

  @override
  void onInit() {
    Timer(const Duration(seconds: 2), onNavigate);
    super.onInit();
  }

  onNavigate() {
    Get.offNamed(Routes.drinkCategories);
  }
}
