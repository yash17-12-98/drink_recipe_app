import 'package:get/get.dart';
import '../bindings/bindings.dart';
import '../screens/screens.dart';
import 'routes.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: Routes.drinkCategories,
    page: () => const DrinkCategories(),
    binding: DrinkCategoriesBinding(),
  ),
  GetPage(
    name: Routes.specificDrinks,
    page: () => const SpecificDrinks(),
    binding: SpecificDrinkBinding(),
  ),
  GetPage(
    name: Routes.drinkDetails,
    page: () => const DrinkDetails(),
    binding: DrinkDetailBinding(),
  )
];