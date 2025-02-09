import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
// import 'package:meals_app/screens/categories_screen.dart';
// import 'package:meals_app/screens/tab_screen.dart';

enum Filters {
  gluten,
  lactose,
  vegetarian,
  vegan
}
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key,required this.curFilter});
  final Map<Filters,bool> curFilter;
  @override
  State<FilterScreen> createState() {
    return _FilterScreen();
  }
}

class _FilterScreen extends State<FilterScreen> {
  var _glutenFreeFilterSet = false;
  var _lactosFreeFilterSet = false;
  var _vegetarianFilterSet = false;
  var _veganFilterSet = false;
  @override
  void initState() {
    super.initState();
    _glutenFreeFilterSet=widget.curFilter[Filters.gluten]!;
    _lactosFreeFilterSet=widget.curFilter[Filters.lactose]!;
    _vegetarianFilterSet=widget.curFilter[Filters.vegetarian]!;
    _veganFilterSet=widget.curFilter[Filters.vegan]!;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      // drawer: MainDrawer(selectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == "Meals") {
      //     Navigator.of(context).push(
      //       MaterialPageRoute(
      //         builder: (cntx) => const TabScreen(),
      //       ),
      //     );
      //   }
      // }),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if(didPop)  return;
          Navigator.of(context).pop({
            Filters.gluten:_glutenFreeFilterSet,
            Filters.lactose:_lactosFreeFilterSet,
            Filters.vegetarian:_vegetarianFilterSet,
            Filters.vegan:_veganFilterSet,
          });   
        },
        child: Column(
          children: [
            SwitchListTile.adaptive(
              value: _glutenFreeFilterSet,
              // whenever pressed isChecked will be passed by flutter to this Anonomus Function
              // we are caliing set state and changing value parameter to reflect changes
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
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
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
              activeTrackColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
            ),
            SwitchListTile.adaptive(
              value: _lactosFreeFilterSet,
              // whenever pressed isChecked will be passed by flutter to this Anonomus Function
              // we are caliing set state and changing value parameter to reflect changes
              onChanged: (isChecked) {
                setState(() {
                  _lactosFreeFilterSet = isChecked;
                });
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
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
              activeTrackColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
            ),
            SwitchListTile.adaptive(
              value: _vegetarianFilterSet,
              // whenever pressed isChecked will be passed by flutter to this Anonomus Function
              // we are caliing set state and changing value parameter to reflect changes
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFilterSet = isChecked;
                });
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
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
              activeTrackColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
            ),
            SwitchListTile.adaptive(
              value: _veganFilterSet,
              // whenever pressed isChecked will be passed by flutter to this Anonomus Function
              // we are caliing set state and changing value parameter to reflect changes
              onChanged: (isChecked) {
                setState(() {
                  _veganFilterSet = isChecked;
                });
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
              contentPadding: const EdgeInsets.only(left: 34,right: 22),
              activeTrackColor: Theme.of(context).colorScheme.tertiary.withOpacity(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
