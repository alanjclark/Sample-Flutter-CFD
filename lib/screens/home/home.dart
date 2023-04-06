import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/restaurant.dart';
import 'package:sample_flutter_cfd/screens/cart/cart.dart';
import 'package:sample_flutter_cfd/screens/home/widget/food_list.dart';
import 'package:sample_flutter_cfd/screens/home/widget/food_list_view.dart';
import 'package:sample_flutter_cfd/screens/home/widget/restaurant_info.dart';
import 'package:sample_flutter_cfd/widgets/custom_app_bar.dart';

import '../../models/cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  final cart = Cart.generateCart();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(Icons.arrow_back, Icons.search),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: FoodListView(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController,
            restaurant,
            cart,
          ))
        ],
      ),
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
