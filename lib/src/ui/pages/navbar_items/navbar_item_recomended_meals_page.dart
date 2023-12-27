import 'package:flutter/material.dart';
import 'package:meals_app/src/services/recipe.dart';
import 'package:meals_app/src/services/recipe_api.dart';
import 'package:meals_app/src/ui/pages/navbar_items/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = (await RecipeApi.getRecipe()).cast<Recipe>();
    setState(() {
      _isLoading = false;
    });
    print(_recipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: ((context, index) {
                  return RecipeCard(
                      title: _recipes[index].name!,
                      cookTime: _recipes[index].totalTime!,
                      rating: _recipes[index].rating!.toString(),
                      thumbnailUrl: _recipes[index].images!);
                })));
  }
}
