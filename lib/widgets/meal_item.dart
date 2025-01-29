import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals_details.dart';
import 'package:meals_app/widgets/meal_item_metadata.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem(this.meal, {super.key});
  final Meal meal;
  void _mealDetails(Meal meal,BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx){
      return MealsDetails(meal);
    }));
  }

  String get complexityTxt {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordabilityTxt {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(8)),
      // this forces the child to be inside the card (to take the shap as card)
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {_mealDetails(meal,context);},
        child: Stack(
          children: [
            // Image(image: NetworkImage(meal.imageUrl)),
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 44),
                  color: Colors.black54,
                  child: Column(
                    children: [
                      Text(
                        meal.title,
                        maxLines: 2,
                        // no matter softWrap line will be divided in 2 if text is longer
                        // softWrap: false,
                        overflow: TextOverflow.ellipsis, // i am ra....
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MealItemMetadata(
                            icon: Icons.timer,
                            label: "${meal.duration} mins",
                          ),
                          MealItemMetadata(
                            icon: Icons.healing_rounded,
                            label: complexityTxt,
                          ),
                          MealItemMetadata(
                            icon: Icons.money,
                            label: affordabilityTxt,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
