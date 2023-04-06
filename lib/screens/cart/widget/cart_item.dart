import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/cart.dart';
import '../../../models/food.dart';
import '../cart.dart';

class CartItem extends StatelessWidget {
  final Food food;
  final Cart cart;
  CartItem(this.food, this.cart);

  void removeFromCart(BuildContext context) {
    cart.items.removeAt(cart.items.indexOf(food));
    Navigator.of(context).pop();
  }

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
                    InkWell(
                      child: Icon(
                        Icons.cancel,
                        size: 30,
                        color: Colors.red,
                      ),
                      onTap: () => {removeFromCart(context)},
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
