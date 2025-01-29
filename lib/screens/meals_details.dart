import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/yes_no_icons.dart';

class MealsDetails extends StatelessWidget {
  const MealsDetails(this.meal, {super.key});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.hardEdge,
            child: Image(
              image: NetworkImage(meal.imageUrl),
            ),
          ),
          const Text("INGREDIENTS",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (String s in meal.ingredients)
            Text(
              s,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          const Text("RECIPIE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          for (String s in meal.steps)
            Text(
              s,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          GridView(
            // otherwise take all vertical space
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,childAspectRatio: 1,mainAxisExtent: 20),
            children: [
              YesNoIcons(label: "GlutenFree", isTrue: meal.isGlutenFree),
              YesNoIcons(label: "LactoseFree", isTrue: meal.isLactoseFree),
              YesNoIcons(label: "Vegan", isTrue: meal.isVegan),
              YesNoIcons(label: "Vegetarian", isTrue: meal.isVegetarian),
            ],
          ),
        ],
      ),
    );
  }
}
