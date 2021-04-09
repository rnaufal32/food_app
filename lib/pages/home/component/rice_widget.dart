import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/config/dummy.dart';
import 'package:food_app/pages/detail/detail.dart';

class RiceWidget extends StatelessWidget {
  const RiceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(
              food: sushi,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
          vertical: padding * 2,
        ),
        margin: EdgeInsets.symmetric(
          vertical: padding,
          horizontal: padding * 1.2,
        ),
        decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    sushi.name,
                    style: Theme.of(context).textTheme.headline6?.apply(
                          color: Colors.black,
                        ),
                  ),
                  SizedBox(height: padding / 4),
                  Text(
                    sushi.desc,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: padding / 2),
                  Text(
                    "\$${sushi.price}",
                    style: Theme.of(context).textTheme.headline6?.apply(
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(sushi.asset),
            )
          ],
        ),
      ),
    );
  }
}
