import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});
  @override
  State<TabScreen> createState() {
    return _TabScreen();
  }
}

class _TabScreen extends State<TabScreen> {
  int _selectedPage = 0;
  List<Meal> fav = [];
  void showFavMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  void toggleMeal(Meal m) {
    if (fav.contains(m)) {
      setState(() {
        fav.remove(m);
        showFavMessage("Meal Removed from Favorite");
      });
    } else {
      setState(() {
        fav.add(m);
        showFavMessage("Meal Added in Favorite");
      });
    }
  }

  void _setPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen =  CategoriesScreen(onToggleFav:toggleMeal);
    String appBarTitle = "Pick Your Category";
    if (_selectedPage == 1) {
      activeScreen = MealsScreen(meals: fav,onToggleFav: toggleMeal,);
      appBarTitle = "Favorite";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _setPage(index);
        },
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
        ],
      ),
    );
  }
}
