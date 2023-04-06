import 'package:sample_flutter_cfd/models/food.dart';

class Cart {
  List<Food> items;
  Cart(this.items);
  static Cart generateCart() {
    return Cart([]);
  }
}
