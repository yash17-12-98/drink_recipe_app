class SpecificDrinks {
  String? strDrink;
  String? strDrinkThumb;
  String? idDrink;

  SpecificDrinks({this.strDrink, this.strDrinkThumb, this.idDrink});

  SpecificDrinks.fromJson(Map<String, dynamic> json) {
    strDrink = json['strDrink'];
    strDrinkThumb = json['strDrinkThumb'];
    idDrink = json['idDrink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['strDrink'] = strDrink;
    data['strDrinkThumb'] = strDrinkThumb;
    data['idDrink'] = idDrink;
    return data;
  }
}

