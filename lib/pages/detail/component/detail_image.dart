import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/model/food.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(food.asset),
          fit: BoxFit.fill,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: padding),
      height: size.height / 3,
      alignment: Alignment.bottomRight,
      child: Stack(
        children: [
          Positioned(
            bottom: padding + 10,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: padding * 1.7,
                vertical: padding / 2,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(
                      0,
                      10,
                    ),
                    color: Colors.black54,
                    blurRadius: 40,
                  )
                ],
              ),
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 10,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(padding / 4),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(padding / 4),
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
