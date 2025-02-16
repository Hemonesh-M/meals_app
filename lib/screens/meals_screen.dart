import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, this.title, required this.meals});
  final String? title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    int col=MediaQuery.of(context).size.width>=400?2:1;
    Widget content = GridView.builder(
      itemCount: meals.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: col),
      itemBuilder: (ctx, idx) {
        return MealItem(meals[idx],);
        // Text(meals[idx].title,style: Theme.of(context)
        //           .textTheme
        //           .bodyLarge!
        //           .copyWith(color: Theme.of(context).colorScheme.onSurface),);
      },
    );
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nothing in this category",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Try Selecting a different Category!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            )
          ],
        ),
      );
    }
    if (title == null) {
      return content;
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            title!,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
        body: content,
      );
    }
  }
}
