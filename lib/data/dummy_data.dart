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

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c11',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
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
    categories: [
      'c7',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
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
    categories: [
      'c5',
    ],
    title: 'Classic Burger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Meat',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
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
    categories: [
      'c11',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
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
    categories: [
      'c11',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
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
    steps: [
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
    categories: [
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
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
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
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
    categories: [
      'c1',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
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
    categories: [
      'c10',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
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
    steps: [
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
    categories: [
      'c11',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
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
    categories: ['c1','c6'],
    title: 'Paneer Butter Masala',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.secondrecipe.com/wp-content/uploads/2021/08/roti-paneer-butter-masala-720x873.jpg',
    duration: 30,
    ingredients: [
      '200g Paneer',
      '2 Tomatoes',
      '1 Onion',
      '50ml Cream',
      'Spices',
    ],
    steps: [
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
    categories: ['c1,c6'],
    title: 'Chole Bhature',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://images.hindi.news18.com/ibnkhabar/uploads/2021/06/chole-bhature.jpg?impolicy=website&width=640&height=480',
    duration: 50,
    ingredients: [
      '1 cup Chickpeas',
      '2 Cups Flour',
      'Spices',
      '1 Onion',
      '1 Tomato',
    ],
    steps: [
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
    categories: ['c2'],
    title: 'Masala Dosa',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.palatesdesire.com/wp-content/uploads/2019/09/Mysore_Masala_Dosa@Palates_Desire-1024x738.jpg',
    duration: 40,
    ingredients: [
      '2 cups Rice',
      '1 cup Urad dal',
      '2 Potatoes',
      'Spices',
      'Oil',
    ],
    steps: [
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
    categories: ['c10'],
    title: 'Mango Lassi',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.cookclickndevour.com/wp-content/uploads/2016/05/mango-lassi-recipe-c.jpg',
    duration: 10,
    ingredients: [
      '1 Ripe Mango',
      '200ml Yogurt',
      'Sugar',
      'Ice Cubes',
    ],
    steps: [
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
    categories: ['c7'],
    title: 'Poha',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.foodie-trail.com/wp-content/uploads/2022/12/PHOTO-2022-12-14-21-39-40.jpg',
    duration: 15,
    ingredients: [
      '1 cup Flattened rice',
      '1 Onion',
      '1 Green Chili',
      'Mustard Seeds',
      'Turmeric',
    ],
    steps: [
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
    categories: ['c1'],
    title: 'Dal Tadka',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/04/dal-tadka.webp',
    duration: 30,
    ingredients: [
      '1 cup Toor Dal',
      '2 Tomatoes',
      '1 Onion',
      '2 Cloves Garlic',
      '1 tsp Cumin Seeds',
      'Spices',
      '1 tbsp Ghee',
    ],
    steps: [
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
    categories: ['c1'],
    title: 'Palak Paneer',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://seitansociety.com/wp-content/uploads/2021/10/PalakPaneer1280x903-1024x722.jpg',
    duration: 35,
    ingredients: [
      '200g Paneer',
      '2 cups Spinach',
      '1 Tomato',
      '1 Onion',
      'Spices',
      '2 tbsp Cream',
    ],
    steps: [
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
    categories: ['c1'],
    title: 'Rajma Chawal',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.vikhrolicucina.com/uploads/stories/1582355956_Rajmachawal.jpg',
    duration: 50,
    ingredients: [
      '1 cup Rajma (Kidney Beans)',
      '2 Tomatoes',
      '1 Onion',
      'Spices',
      '1 tbsp Butter',
      'Cooked Rice',
    ],
    steps: [
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
    categories: ['c7'],
    title: 'Aloo Paratha',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Aloo_Paratha_also_known_as_Batatay_Jo_Phulko.jpg/440px-Aloo_Paratha_also_known_as_Batatay_Jo_Phulko.jpg',
    duration: 40,
    ingredients: [
      '2 cups Whole Wheat Flour',
      '2 Boiled Potatoes',
      'Spices',
      'Butter',
    ],
    steps: [
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
    categories: ['c8'],
    title: 'Hyderabadi Biryani',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/02/hyderabadi-biryani-with-chicken.webp',
    duration: 90,
    ingredients: [
      '2 cups Basmati Rice',
      '200g Chicken/Mutton/Veggies',
      '1 cup Yogurt',
      'Spices',
      'Fried Onions',
    ],
    steps: [
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
    categories: ['c5','c8'],
    title: 'Pani Puri',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Pani_Puri1.JPG/400px-Pani_Puri1.JPG',
    duration: 45,
    ingredients: [
      '1 cup Semolina',
      '1/2 cup Flour',
      '1 cup Tamarind Chutney',
      '1 cup Mint Water',
      'Boiled Potatoes and Chickpeas',
      'Spices',
    ],
    steps: [
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
    categories: ['c10'],
    title: 'Gulab Jamun',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://theartisticcook.com/wp-content/uploads/2024/10/Gulab-Jamun-with-Milk-Powder.jpg',
    duration: 60,
    ingredients: [
      '1 cup Khoya',
      '2 tbsp Flour',
      '1/4 tsp Baking Powder',
      '1 cup Sugar',
      'Spices',
      'Oil for frying',
    ],
    steps: [
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
    categories: ['c1','c6'],
    title: 'Butter Chicken',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://sp-ao.shortpixel.ai/client/to_webp,q_lossy,ret_img,w_1024/https://www.spiceroots.com/spiceroots/wp-content/uploads/2008/05/butterchicken-1024x682.jpg',
    duration: 50,
    ingredients: [
      '500g Chicken',
      '1 cup Tomato Puree',
      '2 tbsp Butter',
      '1 cup Fresh Cream',
      'Garlic-Ginger Paste',
      'Spices (Garam Masala, Turmeric)',
    ],
    steps: [
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
    id: 'm25',
    categories: ['c6'],
    title: 'Sarson Ka Saag',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://i0.wp.com/binjalsvegkitchen.com/wp-content/uploads/2016/11/Sarson-Ka-Saag-H1.jpg?w=600&ssl=1',
    duration: 60,
    ingredients: [
      'Mustard Greens',
      'Spinach',
      'Makki Ka Atta',
      'Ghee',
      'Spices'
    ],
    steps: [
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
    id: 'm27',
    categories: ['c8'],
    title: 'Pav Bhaji',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.vegrecipesofindia.com/wp-content/uploads/2021/04/pav-bhaji-recipe-1.jpg',
    duration: 30,
    ingredients: ['Mixed Vegetables', 'Butter', 'Pav Buns', 'Spices'],
    steps: [
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
    id: 'm28',
    categories: ['c9'],
    title: 'Macher Jhol',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://rupal-bhatikar.com/wp-content/uploads/2021/11/DSC04256-1.jpg',
    duration: 40,
    ingredients: ['Fish', 'Mustard Oil', 'Turmeric', 'Tomatoes', 'Spices'],
    steps: [
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
    id: 'm30',
    categories: ['c3'],
    title: 'Vegetable Manchurian',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://vegecravings.com/wp-content/uploads/2017/03/veg-manchurian-dry-recipe-step-by-step-instructions-10.jpg',
    duration: 35,
    ingredients: [
      'Mixed Vegetables',
      'Cornflour',
      'Soy Sauce',
      'Ginger-Garlic Paste',
      'Green Chilies',
    ],
    steps: [
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
    id: 'm31',
    categories: ['c4'],
    title: 'Ratatouille',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.allrecipes.com/thmb/bkXoArv3mjCmhOHKPBkaQUR48dg=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/222006-disneys-ratatouille-DDMFS-4x3-36eb15843ab548a79e7aab761dac92e1.jpg',
    duration: 45,
    ingredients: [
      'Zucchini',
      'Eggplant',
      'Bell Peppers',
      'Tomato Sauce',
      'Herbs de Provence',
    ],
    steps: [
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
    id: 'm32',
    categories: ['c5'],
    title: 'Vada Pav',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://ministryofcurry.com/wp-content/uploads/2024/06/vada-pav-9.jpg',
    duration: 30,
    ingredients: ['Potatoes', 'Gram Flour', 'Pav Buns', 'Green Chutney'],
    steps: ['Make potato filling', 'Dip in batter and fry', 'Assemble in buns'],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm33',
    categories: ['c3'],
    title: 'Hakka Noodles',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/07/hakka-noodles.webp',
    duration: 25,
    ingredients: ['Noodles', 'Mixed Vegetables', 'Soy Sauce', 'Vinegar'],
    steps: ['Boil noodles', 'Stir-fry veggies', 'Combine with sauces'],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),

  Meal(
    id: 'm34',
    categories: ['c4'],
    title: 'Quiche Lorraine (Chicken)',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://preppykitchen.co.uk/wp-content/uploads/2024/07/Quiche-Lorraine-Feature.jpg',
    duration: 55,
    ingredients: ['Pie Crust', 'Eggs', 'Chicken', 'Cheese', 'Cream'],
    steps: ['Pre-bake crust', 'Mix filling', 'Bake until golden'],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
];
