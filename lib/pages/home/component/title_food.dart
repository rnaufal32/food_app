import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';

class TitleFood extends StatelessWidget {
  const TitleFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: padding,
        horizontal: padding * 1.4,
      ),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Delicious ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "Food",
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 30,
            ),
          ),
        ]),
      ),
    );
  }
}
