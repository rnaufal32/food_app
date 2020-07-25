import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/model/food.dart';

class PriceFab extends StatelessWidget {
  const PriceFab({
    Key key,
    @required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: padding * 2,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Price\n',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              TextSpan(
                text: '\$${food.price}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ]),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(10, 25),
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 30,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Icon(Icons.home),
          ),
          Container(
            margin: EdgeInsets.only(
              left: padding / 2,
            ),
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(10, 25),
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 30,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
