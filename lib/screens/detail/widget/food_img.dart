import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  const FoodImg(this.food, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Image.asset(food.imgUrlSecondary, fit: BoxFit.cover)),
            )
          ],
        ));
  }
}
