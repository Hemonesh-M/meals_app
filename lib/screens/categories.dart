import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pick Your Category"),
      ),
      body: GridView(
        //main axis is top to bottom
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
          ),
        children:  [
          for(Category cat in availableCategories)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(cat.id,style: const TextStyle(color: Colors.white),),
                const SizedBox(height: 10,),
                Text(cat.title),
              ],
            ),

          // Text("1",style: TextStyle(color: Colors.white)),
          // Text("2",style: TextStyle(color: Colors.white)),
          // Text("3",style: TextStyle(color: Colors.white)),
          // Text("4",style: TextStyle(color: Colors.white)),
          // Text("5",style: TextStyle(color: Colors.white)),
          // Text("6",style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
