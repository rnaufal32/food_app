import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/config/dummy.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/pages/detail/detail.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          foodItem(context, burger),
          foodItem(context, desserts),
        ],
      ),
    );
  }

  GestureDetector foodItem(BuildContext context, Food item) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(
              food: item,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: padding / 2,
        ),
        height: size.height * 0.38,
        width: size.width / 2.3,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: item.color,
                ),
                padding: EdgeInsets.only(
                  left: padding,
                  right: padding,
                  bottom: padding * 2,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      item.name,
                      style: Theme.of(context).textTheme.headline6.apply(
                            color: Colors.black,
                          ),
                    ),
                    SizedBox(height: padding / 2),
                    Text(
                      item.desc,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: padding / 2),
                    Text(
                      "\$${item.price}",
                      style: Theme.of(context).textTheme.headline6.apply(
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: padding,
              ),
              alignment: Alignment.topCenter,
              child: Image.asset(
                item.asset,
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
