import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/cart.dart';
import 'package:sample_flutter_cfd/screens/cart/cart.dart';
import 'package:sample_flutter_cfd/screens/detail/widget/add_food.dart';
import 'package:sample_flutter_cfd/screens/detail/widget/food_detail.dart';
import 'package:sample_flutter_cfd/screens/detail/widget/food_img.dart';
import 'package:sample_flutter_cfd/widgets/custom_app_bar.dart';
import '../../models/food.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  final Cart cart;
  const DetailPage(this.food, this.cart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryGreen,
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppBar(
            Icons.arrow_back,
            Icons.favorite_outline,
            leftCallback: () => Navigator.of(context).pop(),
          ),
          FoodImg(food),
          FoodDetail(food),
          AddFood(food, cart),
        ],
      )),
      floatingActionButton: cart.items.isNotEmpty
          ? SizedBox(
              width: 100,
              height: 56,
              child: RawMaterialButton(
                fillColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                elevation: 2,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          cart.items.length.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    ]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartView(cart)));
                },
              ),
            )
          : FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartView(cart)));
              },
              backgroundColor: kPrimaryGreen,
              elevation: 2,
              child: const Icon(Icons.shopping_bag_outlined,
                  color: Colors.black, size: 30),
            ),
    );
  }
}
