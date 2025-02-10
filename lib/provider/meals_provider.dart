// import 'package:meals_app/data/dummy_data%20(indian%20meal%20but%20same%20catergories).dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:riverpod/riverpod.dart';

var mealsProvider=Provider((ref){
  return dummyMeals;
});