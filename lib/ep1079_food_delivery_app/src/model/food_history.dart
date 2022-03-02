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
