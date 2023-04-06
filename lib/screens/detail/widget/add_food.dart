import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';

import '../../../models/food.dart';
import '../../../models/cart.dart';
import '../../cart/cart.dart';

class AddFood extends StatelessWidget {
  final Food food;
  final Cart cart;
  AddFood(this.food, this.cart);

  void addToCart(Food food, Cart cart, BuildContext context) {
    cart.items.add(food);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartView(cart)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Like this item?',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kPrimaryColor,
              ),
              child: Text(
                'add to cart',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            onTap: () => {addToCart(food, cart, context)},
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
