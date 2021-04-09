import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/config/constant.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: padding / 1.2,
      ),
      child: Row(
        children: [
          itemFood(),
          itemFood(),
          itemFood(),
          itemFood(),
          itemFood(),
        ],
      ),
    );
  }

  Container itemFood() {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.symmetric(
        vertical: padding,
        horizontal: padding / 2.4,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SvgPicture.asset('assets/ic_burger.svg'),
    );
  }
}
