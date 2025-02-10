import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/provider/meals_provider.dart';
// import 'package:meals_app/screens/filter_screen.dart';
enum Filters {
  gluten,
  lactose,
  vegetarian,
  vegan
}
class FilteredMealNotifier extends StateNotifier<Map<Filters,bool>>{
  FilteredMealNotifier(): super({
    Filters.gluten:false,
    Filters.lactose:false,
    Filters.vegetarian:false,
    Filters.vegan:false,
  });
  void setFilter(Filters F,bool isTrue){
      state={...state,F:isTrue};
  }
}
var filteredMealProvider=StateNotifierProvider<FilteredMealNotifier,Map<Filters,bool>>((ref){
  return FilteredMealNotifier();
});

var filteredMealListProvider=Provider((ref){
  var mealList=ref.watch(mealsProvider);
  var curFilters=ref.watch(filteredMealProvider);
  return mealList.where((meal) {
      if (curFilters[Filters.gluten]! && !meal.isGlutenFree) {
        return false;
      }
      if (curFilters[Filters.lactose]! && !meal.isLactoseFree) {
        return false;
      }
      if (curFilters[Filters.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      if (curFilters[Filters.vegan]! && !meal.isVegan) {
        return false;
      }
      return true;
    }).toList();
});