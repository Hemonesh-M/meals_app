// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavMealsNotifier extends StateNotifier<List<Meal>> {
  FavMealsNotifier() : super([]);
  bool toggleFav(Meal meal) {
    bool isFav = state.contains(meal);
    if (isFav) {
      //removing meal
      state = state.where((mealInList) {
        if (mealInList.id == meal.id) {
          return false;
        } else {
          return true;
        }
      }).toList();
      return false;
    } else {
      //adding meal
      state = [...state, meal];
      return true;
    }
  }

  // bool isFav(Meal meal) {
  //   if (state.contains(meal)) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}

final favMealsProvider = StateNotifierProvider<FavMealsNotifier, List<Meal>>(
  (ref) {
    return FavMealsNotifier();
  },
);
