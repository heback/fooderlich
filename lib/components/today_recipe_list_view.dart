import 'package:flutter/material.dart';

import 'components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {
  final List<ExploreRecipe> recipe;
  const TodayRecipeListView({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'recipes of the Day 🍳',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 16,),
          Container(
            height: 400,
            //TODO: Add ListView Here
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  //TODO: Add buildCard() widget here
}
