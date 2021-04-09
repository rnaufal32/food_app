import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "${food.name}\n\n",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.black),
          ),
          TextSpan(
            text: food.desc,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
