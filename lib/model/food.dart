import 'package:flutter/material.dart';

class Food {
  final String name;
  final String desc;
  final String asset;
  final int price;
  final Color color;

  Food(
      {required this.name,
      required this.desc,
      required this.asset,
      required this.price,
      required this.color});
}
