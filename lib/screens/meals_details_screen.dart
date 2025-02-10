import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/provider/fav_meals_provider.dart';
import 'package:meals_app/widgets/yes_no_icons.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsDetailsScreen extends ConsumerWidget {
  const MealsDetailsScreen(this.meal, {super.key});
  final Meal meal;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Meal> favs=ref.watch(favMealsProvider); 
    bool isFav=favs.contains(meal);
    // bool isFav=ref.watch(favMealsProvider.notifier).isFav(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              final isAdded =
                  ref.watch(favMealsProvider.notifier).toggleFav(meal);
              String message = "${meal.title} is REMOVED from Favourite";
              if (isAdded) {
                message = "${meal.title} is ADDED to Favourite";
              }
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            },
            icon:  Icon(isFav? Icons.star:Icons.star_border),
            // icon: const Icon(Icons.star_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        // in ListView we have children and text is left formatted
        // in Column default is centre
        child: Column(
          children: [
            Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              clipBehavior: Clip.hardEdge,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                // height: 200,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "INGREDIENTS",
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            for (String s in meal.ingredients)
              Text(
                s,
                // textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "RECIPIE",
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            for (String s in meal.steps)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Text(
                  s,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            const SizedBox(
              height: 12,
            ),
            GridView(
              // otherwise take all vertical space
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                  mainAxisExtent: 20),
              children: [
                YesNoIcons(label: "GlutenFree", isTrue: meal.isGlutenFree),
                YesNoIcons(label: "LactoseFree", isTrue: meal.isLactoseFree),
                YesNoIcons(label: "Vegan", isTrue: meal.isVegan),
                YesNoIcons(label: "Vegetarian", isTrue: meal.isVegetarian),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
