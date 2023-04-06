import 'package:flutter/material.dart';
import 'package:sample_flutter_cfd/constants/colors.dart';
import 'package:sample_flutter_cfd/models/food.dart';

class CartHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 30.0,
                      )
                    ],
                  ),
                  child: Image.asset('assets/images/cci-black.png',
                      fit: BoxFit.cover)),
            )
          ],
        ));
  }
}
