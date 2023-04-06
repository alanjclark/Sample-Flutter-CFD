import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';

import '../../../models/food.dart';

class FoodQuantity extends StatelessWidget {
  final Food food;
  FoodQuantity(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child: Stack(children: [
        Align(
          child: Container(
            width: 80,
            height: double.maxFinite,
            // decoration: BoxDecoration(
            //   color: Colors.grey.withOpacity(0.1),
            //   borderRadius: BorderRadius.circular(30),
            // ),
            child: Row(children: [
              SizedBox(
                width: 15,
              ),
              Text('\$',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                food.price.toString(),
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
        // Align(
        //   alignment: Alignment(0.3, 0),
        //   child: Container(
        //       height: double.maxFinite,
        //       width: 120,
        //       decoration: BoxDecoration(
        //         color: kPrimaryColor,
        //         borderRadius: BorderRadius.circular(30),
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: [
        //           InkWell(
        //             child: Text(
        //               '-',
        //               style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.white),
        //             ),
        //             onTap: () {
        //               food.quantity--;
        //             },
        //           ),
        //           Container(
        //             padding: EdgeInsets.all(12),
        //             decoration: BoxDecoration(
        //               shape: BoxShape.circle,
        //               color: Colors.white,
        //             ),
        //             child: Text(
        //               food.quantity.toString(),
        //               style: TextStyle(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 16,
        //                   color: kPrimaryColor),
        //             ),
        //           ),
        //           InkWell(
        //             child: Text(
        //               '+',
        //               style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.white),
        //             ),
        //             onTap: () {
        //               food.quantity++;
        //             },
        //           )
        //         ],
        //       )),
        // )
      ]),
    );
  }
}
