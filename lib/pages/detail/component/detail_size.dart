import 'package:flutter/material.dart';
import 'package:food_app/config/constant.dart';

class DetailSize extends StatelessWidget {
  const DetailSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: padding * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: padding / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue.shade100,
            ),
            padding: EdgeInsets.symmetric(
              vertical: padding,
              horizontal: padding + 10,
            ),
            child: Text(
              "S",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: padding / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.orange,
            ),
            padding: EdgeInsets.symmetric(
              vertical: padding,
              horizontal: padding + 10,
            ),
            child: Text(
              "M",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: padding / 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue.shade100,
            ),
            padding: EdgeInsets.symmetric(
              vertical: padding,
              horizontal: padding + 10,
            ),
            child: Text(
              "L",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
