import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.name,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(restaurant.waitTime,
                            style: TextStyle(
                                fontSize: 16,
                                color: kPrimaryGreen,
                                fontWeight: FontWeight.bold))),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(restaurant.distance,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(restaurant.label,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kSecondaryColor)),
                    ),
                  ],
                )
              ],
            ),
            ClipRRect(child: Image.asset(restaurant.logoUrl, width: 80))
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('"${restaurant.desc}"', style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Icon(Icons.star_outlined,
                    color: Color.fromARGB(255, 227, 205, 5)),
                Text(
                  '${restaurant.score}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15)
              ],
            )
          ],
        )
      ]),
    );
  }
}
