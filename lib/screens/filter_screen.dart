import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meals_app/models/meal.dart';
import 'package:meals_app/provider/filtered_meal_provider.dart';
// import 'package:meals_app/screens/categories_screen.dart';
// import 'package:meals_app/screens/tab_screen.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});
  // final Map<Filters,bool> curFilter;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<Filters, bool> curFilter = ref.watch(filteredMealProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: Column(
        children: [
          SwitchListTile.adaptive(
            value: curFilter[Filters.gluten]!,
            // whenever pressed isChecked will be passed by flutter to this Anonomus Function
            // we are caliing set state and changing value parameter to reflect changes
            onChanged: (isChecked) {
              ref
                  .read(filteredMealProvider.notifier)
                  .setFilter(Filters.gluten, isChecked);
              // setState(() {
              //   _glutenFreeFilterSet = isChecked;
              // });
            },
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text(
              "Gluten",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Show only Gluten free dishes",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeTrackColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
          ),
          SwitchListTile.adaptive(
            value: curFilter[Filters.lactose]!,
            // whenever pressed isChecked will be passed by flutter to this Anonomus Function
            // we are caliing set state and changing value parameter to reflect changes
            onChanged: (isChecked) {
              ref
                  .read(filteredMealProvider.notifier)
                  .setFilter(Filters.lactose, isChecked);
              //   setState(() {
              //     _lactosFreeFilterSet = isChecked;
              //   });
            },
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text(
              "Lactose",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Show only Lactose free dishes",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeTrackColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
          ),
          SwitchListTile.adaptive(
            value: curFilter[Filters.vegetarian]!,
            // whenever pressed isChecked will be passed by flutter to this Anonomus Function
            // we are caliing set state and changing value parameter to reflect changes
            onChanged: (isChecked) {
              ref
                  .read(filteredMealProvider.notifier)
                  .setFilter(Filters.vegetarian, isChecked);
              // setState(() {
              //   _vegetarianFilterSet = isChecked;
              // });
            },
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text(
              "Vegetarian",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Show only Vegetarian dishes",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeTrackColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
          ),
          SwitchListTile.adaptive(
            value: curFilter[Filters.vegan]!,
            // whenever pressed isChecked will be passed by flutter to this Anonomus Function
            // we are caliing set state and changing value parameter to reflect changes
            onChanged: (isChecked) {
              ref
                  .read(filteredMealProvider.notifier)
                  .setFilter(Filters.vegan, isChecked);
              // setState(() {
              //   _veganFilterSet = isChecked;
              // });
            },
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text(
              "Vegan",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              "Show only Vegan dishes",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeTrackColor:
                Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
          ),
        ],
      ),
    );
  }
}
