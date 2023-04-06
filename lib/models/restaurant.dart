import 'package:sample_flutter_cfd/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaurant generateRestaurant() {
    return Restaurant(
        'Continuous Food Delivery',
        '20-30 min',
        '3.1 miles',
        'CFD',
        'assets/images/cci-black.png',
        'Continually delivering food',
        5.0, {
      'Daily Offerings': Food.generateRecommendFoods(),
      'Popular': [],
      'Specials': [],
    });
  }
}
