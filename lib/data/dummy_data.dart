import 'package:flutter/material.dart';

import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'North Indian',
    color: Colors.orange,
  ),
  Category(
    id: 'c2',
    title: 'South Indian',
    color: Colors.deepPurple,
  ),
  Category(
    id: 'c3',
    title: 'Chinese',
    color: Colors.red,
  ),
  Category(
    id: 'c4',
    title: 'French',
    color: Colors.blue,
  ),
  Category(
    id: 'c5',
    title: 'Street Food',
    color: Colors.green,
  ),
  Category(
    id: 'c6',
    title: 'Punjabi',
    color: Colors.yellow,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Maharashtrian',
    color: Colors.pink,
  ),
  Category(
    id: 'c9',
    title: 'Bengali',
    color: Colors.teal,
  ),
  Category(
    id: 'c10',
    title: 'Desserts',
    color: Colors.brown,
  ),
  Category(
    id: 'c11',
    title: 'Exotic',
    color: Colors.purple,
  ),
];
const mealImagePaths = [
  'assets/images/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg', // m1
  'assets/images/toast-3532016_1280.jpg',                                  // m2
  'assets/images/burger-500054_1280.jpg',                                  // m3
  'assets/images/schnitzel-3279045_1280.jpg',                              // m4
  'assets/images/smoked-salmon-salad-1768890_1280.jpg',                    // m5
  'assets/images/pastry-2274750_1280.jpg',                                 // m6
  'assets/images/pancake-3529653_1280.jpg',                                // m7
  'assets/images/indian-food-3482749_1280.jpg',                            // m8
  'assets/images/souffle-412785_1280.jpg',                                 // m9
  'assets/images/asparagus-3304997_1280.jpg',                              // m10
  'assets/images/roti-paneer-butter-masala-720x873.jpg',                   // m11
  'assets/images/chole-bhature.jpg',                                       // m12
  'assets/images/Mysore_Masala_Dosa@Palates_Desire-1024x738.jpg',         // m13
  'assets/images/mango-lassi-recipe-c.jpg',                                // m14
  'assets/images/Poha.jpg',                                                // m15
  'assets/images/dal-tadka.webp',                                          // m16
  'assets/images/PalakPaneer1280x903-1024x722.jpg',                        // m17
  "assets/images/Rajmachawal.jpg",                                          //m18
  "assets/images/Aloo_Paratha_also_known_as_Batatay_Jo_Phulko.jpg",         //m19
  'assets/images/hyderabadi-biryani-with-chicken.webp',                    // m20
  'assets/images/Pani_Puri1.JPG',                                          // m21
  'assets/images/Gulab-Jamun-with-Milk-Powder.jpg',                        // m22
  'assets/images/butterchicken-1024x682.jpg',                              // m23
  'assets/images/Sarson-Ka-Saag-H1.jpg',                                   // m24
  'assets/images/pav-bhaji-recipe-1.jpg',                                  // m25
  "assets/images/Machher Jhol.jpg",                                         //m26
  'assets/images/veg-manchurian-dry-recipe-step-by-step-instructions-10.jpg', // m27
  'assets/images/222006-disneys-ratatouille-DDMFS-4x3-36eb15843ab548a79e7aab761dac92e1.webp', // m28
  'assets/images/vada-pav-9.jpg',                                          // m29
  'assets/images/hakka-noodles.webp',                                      // m30
  'assets/images/Quiche-Lorraine-Feature.jpg',                             // m31
];
const mealImagePaths1 = [
  'assets/images/roti-paneer-butter-masala-720x873.jpg',                   // m1
  'assets/images/Sarson-Ka-Saag-H1.jpg',                                   // m2
  'assets/images/schnitzel-3279045_1280.jpg',                              // m3
  'assets/images/smoked-salmon-salad-1768890_1280.jpg',                    // m4
  'assets/images/souffle-412785_1280.jpg',                                 // m5
  'assets/images/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg', // m6
  'assets/images/toast-3532016_1280.jpg',                                  // m7
  'assets/images/vada-pav-9.jpg',                                          // m8
  'assets/images/veg-manchurian-dry-recipe-step-by-step-instructions-10.jpg', // m9
  'assets/images/222006-disneys-ratatouille-DDMFS-4x3-36eb15843ab548a79e7aab761dac92e1.webp', // m10
  'assets/images/Aloo_Paratha_also_known_as_Batatay_Jo_Phulko.jpg',       // m11
  'assets/images/asparagus-3304997_1280.jpg',                              // m12
  'assets/images/burger-500054_1280.jpg',                                  // m13
  'assets/images/butterchicken-1024x682.jpg',                              // m14
  'assets/images/chole-bhature.jpg',                                       // m15
  'assets/images/dal-tadka.webp',                                          // m16
  'assets/images/Machher Jhol.jpg',                                        // m17
  'assets/images/Gulab-Jamun-with-Milk-Powder.jpg',                        // m18
  'assets/images/hakka-noodles.webp',                                      // m19
  'assets/images/hyderabadi-biryani-with-chicken.webp',                    // m20
  'assets/images/indian-food-3482749_1280.jpg',                            // m21
  'assets/images/mango-lassi-recipe-c.jpg',                                // m22
  'assets/images/Mysore_Masala_Dosa@Palates_Desire-1024x738.jpg',         // m23
  'assets/images/PalakPaneer1280x903-1024x722.jpg',                        // m24
  'assets/images/pancake-3529653_1280.jpg',                                // m25
  'assets/images/Pani_Puri1.JPG',                                          // m26
  'assets/images/pastry-2274750_1280.jpg',                                 // m27
  'assets/images/pav-bhaji-recipe-1.jpg',                                  // m28
  'assets/images/Poha.jpg',                                                // m29
  'assets/images/Quiche-Lorraine-Feature.jpg',                             // m30
];
var dummyMeals = [
  Meal(
    id: 'm1',
    categories: const [
      'c11',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[0],
    duration: 20,
    ingredients: const [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: const [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: const [
      'c7',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[1],
    duration: 10,
    ingredients: const [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: const [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: const [
      'c5',
    ],
    title: 'Classic Burger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[2],
    duration: 45,
    ingredients: const [
      '300g Meat',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: const [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: const [
      'c11',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[3],
    duration: 60,
    ingredients: const [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: const [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: const [
      'c11',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[4],
    duration: 15,
    ingredients: const [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: const [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: const [
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        mealImagePaths[5],
    duration: 240,
    ingredients: const [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: const [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: const [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[6],
    duration: 20,
    ingredients: const [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: const [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: const [
      'c1',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[7],
    duration: 35,
    ingredients: const [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: const [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: const [
      'c10',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        mealImagePaths[8],
    duration: 45,
    ingredients: const [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: const [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: const [
      'c11',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[9],
    duration: 30,
    ingredients: const [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: const [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: const ['c1','c6'],
    title: 'Paneer Butter Masala',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[10],
    duration: 30,
    ingredients: const [
      '200g Paneer',
      '2 Tomatoes',
      '1 Onion',
      '50ml Cream',
      'Spices',
    ],
    steps: const [
      'Saute onions and tomatoes.',
      'Blend to a puree.',
      'Add spices and paneer cubes.',
      'Cook with cream for 10 mins.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: const ['c1,c6'],
    title: 'Chole Bhature',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        mealImagePaths[11],
    duration: 50,
    ingredients: const [
      '1 cup Chickpeas',
      '2 Cups Flour',
      'Spices',
      '1 Onion',
      '1 Tomato',
    ],
    steps: const [
      'Soak and boil chickpeas.',
      'Prepare spicy gravy.',
      'Make and fry bhature.',
      'Serve with pickle.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm13',
    categories: const ['c2'],
    title: 'Masala Dosa',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[12],
    duration: 40,
    ingredients: const [
      '2 cups Rice',
      '1 cup Urad dal',
      '2 Potatoes',
      'Spices',
      'Oil',
    ],
    steps: const [
      'Soak and grind rice and dal.',
      'Ferment batter overnight.',
      'Prepare potato filling.',
      'Make thin crispy dosas.',
      'Serve with chutney and sambar.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: const ['c10'],
    title: 'Mango Lassi',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[13],
    duration: 10,
    ingredients: const [
      '1 Ripe Mango',
      '200ml Yogurt',
      'Sugar',
      'Ice Cubes',
    ],
    steps: const [
      'Blend mango, yogurt, and sugar.',
      'Add ice cubes and blend again.',
      'Serve chilled.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm15',
    categories: const ['c7'],
    title: 'Poha',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[14],
    duration: 15,
    ingredients: const [
      '1 cup Flattened rice',
      '1 Onion',
      '1 Green Chili',
      'Mustard Seeds',
      'Turmeric',
    ],
    steps: const [
      'Rinse poha in water.',
      'Saute onions and spices.',
      'Mix poha and cook for 2 mins.',
      'Serve hot.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm16',
    categories: const ['c1'],
    title: 'Dal Tadka',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[15],
    duration: 30,
    ingredients: const [
      '1 cup Toor Dal',
      '2 Tomatoes',
      '1 Onion',
      '2 Cloves Garlic',
      '1 tsp Cumin Seeds',
      'Spices',
      '1 tbsp Ghee',
    ],
    steps: const [
      'Boil toor dal with salt and turmeric.',
      'Saute onions, tomatoes, and spices.',
      'Mix cooked dal and simmer.',
      'Add tempering with ghee, cumin, and garlic.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm17',
    categories: const ['c1'],
    title: 'Palak Paneer',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[16],
    duration: 35,
    ingredients: const [
      '200g Paneer',
      '2 cups Spinach',
      '1 Tomato',
      '1 Onion',
      'Spices',
      '2 tbsp Cream',
    ],
    steps: const [
      'Blanch spinach and make a puree.',
      'Saute onions, tomatoes, and spices.',
      'Add spinach puree and cook for 5 minutes.',
      'Add paneer cubes and mix well.',
      'Finish with cream and serve hot.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm18',
    categories: const ['c1'],
    title: 'Rajma Chawal',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[17],
    duration: 50,
    ingredients: const [
      '1 cup Rajma (Kidney Beans)',
      '2 Tomatoes',
      '1 Onion',
      'Spices',
      '1 tbsp Butter',
      'Cooked Rice',
    ],
    steps: const [
      'Soak and boil rajma with salt.',
      'Saute onions, tomatoes, and spices.',
      'Mix cooked rajma and simmer.',
      'Serve with steamed rice.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm19',
    categories: const ['c7'],
    title: 'Aloo Paratha',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[18],
    duration: 40,
    ingredients: const [
      '2 cups Whole Wheat Flour',
      '2 Boiled Potatoes',
      'Spices',
      'Butter',
    ],
    steps: const [
      'Knead dough with flour and water.',
      'Prepare spiced mashed potato filling.',
      'Roll out dough and stuff with filling.',
      'Cook on a tawa with butter.',
      'Serve with curd and pickle.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm20',
    categories: const ['c8'],
    title: 'Hyderabadi Biryani',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl:
        mealImagePaths[19],
    duration: 90,
    ingredients: const [
      '2 cups Basmati Rice',
      '200g Chicken/Mutton/Veggies',
      '1 cup Yogurt',
      'Spices',
      'Fried Onions',
    ],
    steps: const [
      'Marinate protein/veggies with yogurt and spices.',
      'Parboil rice with whole spices.',
      'Layer rice and marinated protein in a pot.',
      'Cook on low heat (Dum) for 30 minutes.',
      'Garnish with fried onions and serve hot.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm21',
    categories: const ['c5','c8'],
    title: 'Pani Puri',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[20],
    duration: 45,
    ingredients: const [
      '1 cup Semolina',
      '1/2 cup Flour',
      '1 cup Tamarind Chutney',
      '1 cup Mint Water',
      'Boiled Potatoes and Chickpeas',
      'Spices',
    ],
    steps: const [
      'Make puris with semolina dough and fry.',
      'Prepare spicy mint water and tamarind chutney.',
      'Stuff puris with potatoes and chickpeas.',
      'Serve with chilled mint water.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm22',
    categories: const ['c10'],
    title: 'Gulab Jamun',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[21],
    duration: 60,
    ingredients: const [
      '1 cup Khoya',
      '2 tbsp Flour',
      '1/4 tsp Baking Powder',
      '1 cup Sugar',
      'Spices',
      'Oil for frying',
    ],
    steps: const [
      'Make dough with khoya, flour, and baking powder.',
      'Shape into small balls.',
      'Deep fry until golden brown.',
      'Soak in sugar syrup and serve warm.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm23',
    categories: const ['c1','c6'],
    title: 'Butter Chicken',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[22],
    duration: 50,
    ingredients: const [
      '500g Chicken',
      '1 cup Tomato Puree',
      '2 tbsp Butter',
      '1 cup Fresh Cream',
      'Garlic-Ginger Paste',
      'Spices (Garam Masala, Turmeric)',
    ],
    steps: const [
      'Marinate chicken in yogurt and spices',
      'Grill chicken pieces',
      'Prepare creamy tomato gravy',
      'Combine chicken and gravy',
      'Simmer with cream and butter'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm24',
    categories: const ['c6'],
    title: 'Sarson Ka Saag',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[23],
    duration: 60,
    ingredients: const [
      'Mustard Greens',
      'Spinach',
      'Makki Ka Atta',
      'Ghee',
      'Spices'
    ],
    steps: const [
      'Cook greens until soft',
      'Blend into a coarse paste',
      'Cook with spices and serve with makki di roti'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm25',
    categories: const ['c8'],
    title: 'Pav Bhaji',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[24],
    duration: 30,
    ingredients: const ['Mixed Vegetables', 'Butter', 'Pav Buns', 'Spices'],
    steps: const [
      'Cook and mash vegetables',
      'Prepare spicy bhaji',
      'Serve with buttered pav'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm26',
    categories: const ['c9'],
    title: 'Macher Jhol',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[25],
    duration: 40,
    ingredients: const ['Fish', 'Mustard Oil', 'Turmeric', 'Tomatoes', 'Spices'],
    steps: const [
      'Marinate fish with turmeric',
      'Prepare light curry',
      'Simmer fish in curry'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // Chinese Meals
  Meal(
    id: 'm27',
    categories: const ['c3'],
    title: 'Vegetable Manchurian',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[26],
    duration: 35,
    ingredients: const [
      'Mixed Vegetables',
      'Cornflour',
      'Soy Sauce',
      'Ginger-Garlic Paste',
      'Green Chilies',
    ],
    steps: const [
      'Make vegetable balls and deep-fry',
      'Prepare tangy sauce',
      'Toss balls in sauce'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  // French Meals
  Meal(
    id: 'm28',
    categories: const ['c4'],
    title: 'Ratatouille',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[27],
    duration: 45,
    ingredients: const [
      'Zucchini',
      'Eggplant',
      'Bell Peppers',
      'Tomato Sauce',
      'Herbs de Provence',
    ],
    steps: const [
      'Slice vegetables thinly',
      'Layer in baking dish',
      'Bake with tomato sauce and herbs'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  // Additional 25+ meals (abbreviated for space)
  Meal(
    id: 'm29',
    categories: const ['c5'],
    title: 'Vada Pav',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[28],
    duration: 30,
    ingredients: const ['Potatoes', 'Gram Flour', 'Pav Buns', 'Green Chutney'],
    steps: const ['Make potato filling', 'Dip in batter and fry', 'Assemble in buns'],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm30',
    categories: const ['c3'],
    title: 'Hakka Noodles',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        mealImagePaths[29],
    duration: 25,
    ingredients: const ['Noodles', 'Mixed Vegetables', 'Soy Sauce', 'Vinegar'],
    steps: const ['Boil noodles', 'Stir-fry veggies', 'Combine with sauces'],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm31',
    categories: const ['c4'],
    title: 'Quiche Lorraine (Chicken)',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        mealImagePaths[30],
    duration: 55,
    ingredients: const ['Pie Crust', 'Eggs', 'Chicken', 'Cheese', 'Cream'],
    steps: const ['Pre-bake crust', 'Mix filling', 'Bake until golden'],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
];
