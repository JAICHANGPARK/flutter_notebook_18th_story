import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1051_travel_car_rental_app/travel_car_rental_app.dart';
import 'ep1054_food_delivery_app/food_delivery_app.dart';

main() {
  runApp(ProviderScope(child: FoodDeliveryApp()));
}
