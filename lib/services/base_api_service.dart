abstract class BaseApiService {
  final String baseUrl = "https://www.thecocktaildb.com/api/json/v1/1/";
  final String categoryList = 'list.php?c=list';
  final String specificDrinkList = 'filter.php?c=';
  final String specificDrinkDetail = 'lookup.php?c=';

  Future<dynamic> getResponse(String param);

}
