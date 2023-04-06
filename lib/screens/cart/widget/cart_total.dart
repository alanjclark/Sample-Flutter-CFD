import 'package:flutter/material.dart';

import '../../../models/cart.dart';

class CartTotal extends StatelessWidget {
  final Cart cart;
  const CartTotal(this.cart, {super.key});

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
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Row(
          children: [
            const SizedBox(height: 40),
            Container(
                margin: const EdgeInsets.all(35),
                child: const Text(
                  'total: ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            const Text(
              '\$',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '$total',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
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
