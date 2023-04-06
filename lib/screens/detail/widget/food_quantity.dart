import 'package:flutter/material.dart';

import '../../../models/food.dart';

class FoodQuantity extends StatelessWidget {
  final Food food;
  const FoodQuantity(this.food, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 40,
      child: Stack(children: [
        Align(
          child: SizedBox(
            width: 80,
            height: double.maxFinite,
            child: Row(children: [
              const SizedBox(
                width: 15,
              ),
              const Text('\$',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                food.price.toString(),
                style:
                    const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
