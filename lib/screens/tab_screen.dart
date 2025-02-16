import 'package:flutter/material.dart';
// import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/provider/fav_meals_provider.dart';
import 'package:meals_app/provider/filtered_meal_provider.dart';
import 'package:meals_app/provider/meals_provider.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/filter_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kDefaultFilterState = {
  Filters.gluten: false,
  Filters.lactose: false,
  Filters.vegetarian: false,
  Filters.vegan: false,
};

class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});
  @override
  ConsumerState<TabScreen> createState() {
    return _TabScreen();
  }
}

class _TabScreen extends ConsumerState<TabScreen> {
  int _selectedPage = 0;
  // List<Meal> fav = [];
  // void showFavMessage(String message) {
  //   ScaffoldMessenger.of(context).clearSnackBars();
  //   ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text(message)));
  // }

  // void toggleMeal(Meal m) {
  //   if (fav.contains(m)) {
  //     setState(() {
  //       fav.remove(m);
  //       showFavMessage("Meal Removed from Favorite");
  //     });
  //   } else {
  //     setState(() {
  //       fav.add(m);
  //       showFavMessage("Meal Added in Favorite");
  //     });
  //   }
  // }

  void _setPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  void _selectScreen(String identifier) {
    // we are at TABS/ CategoryScreen Already
    Navigator.of(context).pop();
    if (identifier == "Meals") {
    } else {
      // final filterResult =
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return const FilterScreen();
          },
        ),
      );
      // print(filterResult);
      // for(var F in filterResult!.entries){
      //   ref.read(filteredMealProvider.notifier).setFilter(F.key,F.value);
      // }
      // setState(
      //   () {
      //     _selectedFilters = filterResult ?? kDefaultFilterState;
      //   },
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    final favMealList=ref.watch(favMealsProvider);
    final List<Meal> filteredMeals = ref.watch(filteredMealListProvider);
    Widget activeScreen = CategoriesScreen(
      filteredMeals: filteredMeals,
    );
    String appBarTitle = "Pick Your Category";
    // 1 means favorite
    if (_selectedPage == 1) {
      activeScreen = MealsScreen(
        meals: favMealList,
      );
      appBarTitle = "Favorite";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      drawer: MainDrawer(selectScreen: _selectScreen),
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

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.selectScreen});
  final void Function(String) selectScreen;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.6),
                  // Theme.of(context).colorScheme.secondary
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.food_bank_sharp,
                  size: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Cooking Up!!!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.restaurant),
            title: Text(
              "Meals",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              selectScreen("Meals");
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              "Fliters",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              selectScreen("Filters");
            },
          ),
        ],
      ),
    );
  }
}
