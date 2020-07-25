import 'package:flutter/material.dart';
import 'package:food_app/pages/home/component/food_category.dart';

import 'food_grid.dart';
import 'rice_widget.dart';
import 'title_food.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleFood(),
        FoodCategory(),
        FoodGrid(),
        RiceWidget(),
      ],
    );
  }
}
