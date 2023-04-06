import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/models/restaurant.dart';
import '../../../models/cart.dart';
import '../../detail/detail.dart';
import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  final Cart cart;

  const FoodListView(this.selected, this.callback, this.pageController,
      this.restaurant, this.cart,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              restaurant.menu[category[selected]]![index],
                              cart)));
                    },
                    child:
                        FoodItem(restaurant.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: restaurant.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
