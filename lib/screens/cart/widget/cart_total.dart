import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/food.dart';

import '../../../models/cart.dart';
import '../cart.dart';

class CartTotal extends StatelessWidget {
  final Cart cart;
  CartTotal(this.cart);

  void resetCart(BuildContext context) {
    cart.items = [];
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var total = 0;
    for (var item in cart.items) {
      total += item.price;
    }
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Row(
          children: [
            SizedBox(height: 40),
            Container(
                margin: EdgeInsets.all(35),
                child: Text(
                  'total: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Text(
              '\$',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '${total}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: Container(
                  margin: EdgeInsets.fromLTRB(200, 0, 0, 0),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Text(
                    'Empty Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ))),
              onTap: () => {resetCart(context)},
            )
          ],
        ));
  }
}
