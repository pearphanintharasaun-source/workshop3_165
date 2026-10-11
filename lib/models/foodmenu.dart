import 'package:flutter/material.dart';

enum Foodpic {
  menu1(image: "assets/images/manu1.png"),
  menu2(image: "assets/images/manu2.png"),
  menu3(image: "assets/images/manu3.png"),
  menu4(image: "assets/images/manu4.png");

  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  final String name;
  final String type;
  final String component;
  final int price;
  final Foodpic foodpic;
  final Color bgColor;

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
    required this.bgColor,
  });
}