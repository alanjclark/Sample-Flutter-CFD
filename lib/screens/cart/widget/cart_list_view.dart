// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/cart.dart';

import 'cart_item.dart';

class CartListView extends StatelessWidget {
  final Cart cart;
  const CartListView(this.cart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // ignore: prefer_const_constructors
          Text(
            'Shopping Cart',
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontStyle: FontStyle.italic),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.shopping_basket_outlined,
                  kSecondaryColor,
                  cart.items.isNotEmpty
                      ? ' ${cart.items.length.toString()}'
                      : ' empty'),
              _buildIconText(
                  Icons.watch_later_outlined, Colors.amber, ' 45 min'),
              _buildIconText(Icons.map_outlined, Colors.red, ' 9.3 mi')
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          for (var items in cart.items) CartItem(items, cart),
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
      Text(text, style: const TextStyle(fontSize: 16))
    ],
  );
}
