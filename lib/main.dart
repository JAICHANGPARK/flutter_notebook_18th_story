import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1079_food_delivery_app/food_delivery_app.dart';


main() {
  runApp(
     const ProviderScope(
      child: FoodDeliveryApp(),
    ),
  );
}
