import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';
import 'package:food_app/model/food.dart';

import 'component/detail_image.dart';
import 'component/detail_size.dart';
import 'component/detail_title.dart';
import 'component/price_fab.dart';

class DetailPage extends StatelessWidget {
  final Food food;

  const DetailPage({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: padding / 2,
          horizontal: padding * 1.5,
        ),
        children: [
          DetailTitle(food: food),
          DetailImage(food: food),
          DetailSize(),
          PriceFab(food: food),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: padding),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: padding),
          child: IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
