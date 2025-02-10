import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
// import 'package:meals_app/data/categories_mismatch_dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen(
      {super.key,  required this.filteredMeals});
  
  final List<Meal> filteredMeals;
  void _selectCategory(BuildContext context, Category cat) {
    // List<Meal> modList =dummyMeals.where((meal){
    //   return meal.categories.any((s)=> s==cat.id);
    // }).toList();
    List<Meal> modList = filteredMeals.where((meal) {
      if (meal.categories.contains(cat.id)) {
        return true;
      } else {
        return false;
      }
    }).toList();
    // Navigator.push(context, route);
    // Navigator.of(context).push(route);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          title: cat.title,
          meals: modList,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      //main axis is top to bottom
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (Category cat in availableCategories)
          CategoryGridItem(cat, () {
            _selectCategory(context, cat);
          })
      ],
    );
  }
}
