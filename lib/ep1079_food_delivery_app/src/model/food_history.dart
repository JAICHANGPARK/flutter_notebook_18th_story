import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_history.freezed.dart';

@freezed
class FoodHistory with _$FoodHistory {
  factory FoodHistory({
    String? img,
    String? title,
    double? price,
    int? itemCount,
  }) = _FoodHistory;
}

List<FoodHistory> foodHistoryItems = [
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2020/06/08/16/49/pizza-5275191_960_720.jpg",
      title: "DOUGH&co Wood Fired Pizza",
      itemCount: 2,
      price: 14.79),
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_960_720.jpg",
      title: "Chinese Overseas Restaurant",
      itemCount: 5,
      price: 52.12),
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2016/10/23/09/35/restaurant-1762490_960_720.jpg",
      title: "Japan Foods",
      itemCount: 2,
      price: 11.24),
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2020/06/08/16/49/pizza-5275191_960_720.jpg",
      title: "DOUGH&co Wood Fired Pizza",
      itemCount: 2,
      price: 14.79),
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_960_720.jpg",
      title: "Chinese Overseas Restaurant",
      itemCount: 5,
      price: 52.12),
  FoodHistory(
      img: "https://cdn.pixabay.com/photo/2016/10/23/09/35/restaurant-1762490_960_720.jpg",
      title: "Japan Foods",
      itemCount: 2,
      price: 11.24),
];
