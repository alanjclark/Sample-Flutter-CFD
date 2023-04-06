import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/cart.dart';
import 'package:sample_flutter_cfd/models/food.dart';

import 'cart_item.dart';

class CartListView extends StatelessWidget {
  final Cart cart;
  CartListView(this.cart);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Shopping Cart',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontStyle: FontStyle.italic),
          ),
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
          SizedBox(
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
      Text(text, style: TextStyle(fontSize: 16))
    ],
  );
}
