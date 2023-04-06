import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/food.dart';

import 'food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, kSecondaryColor, food.waitTime),
              _buildIconText(
                  Icons.star_outline, Colors.amber, food.score.toString()),
              _buildIconText(Icons.local_fire_department, Colors.red, food.cal)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          SizedBox(
            height: 30,
          ),
          Text(
            'About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '${food.about}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Widget _buildIconText(IconData icon, Color color, String text) {
  return Row(
    children: [
      Icon(
        icon,
        color: color,
        size: 20,
      ),
      Text(text, style: TextStyle(fontSize: 16))
    ],
  );
}
