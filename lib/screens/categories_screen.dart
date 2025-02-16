import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
// import 'package:meals_app/data/categories_mismatch_dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen(
      {super.key,  required this.filteredMeals});
  
  final List<Meal> filteredMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> with TickerProviderStateMixin{
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController=AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );
    super.initState();
  }
  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
  void _selectCategory(BuildContext context, Category cat) {
    // List<Meal> modList =dummyMeals.where((meal){
    //   return meal.categories.any((s)=> s==cat.id);
    // }).toList();
    List<Meal> modList = widget.filteredMeals.where((meal) {
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
