import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(food.imgUrl, fit: BoxFit.fitHeight),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(food.name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5)),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                    )
                  ],
                ),
                Text(food.desc,
                    style: TextStyle(
                        color: food.highlight ? kPrimaryGreen : kPrimaryColor,
                        height: 1.5)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('\$',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    Text('${food.price}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
