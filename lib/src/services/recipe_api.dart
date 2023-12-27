import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meals_app/src/services/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {"limit": '5', "start": '8'});
    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '36e54221a7mshf1ed8d72d567226p157deejsn9fb32bb8490f',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
      'useQueryString': 'true'
    });
    Map data = await jsonDecode(response.body);

    List temp = [];
    for (var i in data['feed']) {
      if (i['content']['details'] != null) {
        temp.add(i['content']['details']);
      }
    }
    return Recipe.recipesFromSnapshot(temp);
  }
}
