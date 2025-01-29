import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(this.category, this.onselectCategory, {super.key});
  final Category category;
  final void Function() onselectCategory;
  @override
  Widget build(BuildContext context) {
    // tap feature can be achived using
    // GestureDetector
    // but InkWell to have feedback as well
    return InkWell(
      // onTap:(){onselectCategory();} ,
      onTap:onselectCategory ,
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).highlightColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.3),
            category.color.withOpacity(0.9)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
    );
  }
}
