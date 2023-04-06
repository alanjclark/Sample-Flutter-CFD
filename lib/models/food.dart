class Food {
  String imgUrl;
  String imgUrlSecondary;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  int price;
  num quantity;
  String about;
  bool highlight;
  Food(this.imgUrl, this.imgUrlSecondary, this.desc, this.name, this.waitTime,
      this.score, this.cal, this.price, this.quantity, this.about,
      {this.highlight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
        'assets/images/hamburger.jpg',
        'assets/images/hamburger.png',
        'No 1. in Sales',
        'Chipotle Bacon Cheeseburger',
        '30 mins',
        4.8,
        '800 kcal',
        12,
        1,
        'A classic American hamburger',
        highlight: true,
      ),
      Food(
        'assets/images/pizza.jpg',
        'assets/images/pizza.png',
        'Straight from Little Italy',
        'Pizza',
        '45 mins',
        3.6,
        '650 kcal',
        6,
        1,
        'A classic Italian-American pizza',
        highlight: false,
      ),
      Food(
        'assets/images/soup.jpg',
        'assets/images/soup.png',
        'Just like mom\'s',
        'Soup',
        '2 hrs',
        5.0,
        '400 kcal',
        3,
        1,
        'A classic Chicken Noodle',
        highlight: false,
      ),
    ];
  }
}
