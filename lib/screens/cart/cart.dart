import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/cart.dart';
import 'package:sample_flutter_cfd/screens/cart/widget/cart_header.dart';
import 'package:sample_flutter_cfd/screens/cart/widget/cart_list_view.dart';
import 'package:sample_flutter_cfd/screens/cart/widget/cart_total.dart';
import 'package:sample_flutter_cfd/widgets/custom_app_bar.dart';

class CartView extends StatelessWidget {
  final Cart cart;
  CartView(this.cart);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryGreen,
        body: SingleChildScrollView(
            child: Column(children: [
          CustomAppBar(
            Icons.arrow_back,
            Icons.delete_forever,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          CartHeader(),
          CartListView(cart),
          CartTotal(cart),
        ])));
  }
}
