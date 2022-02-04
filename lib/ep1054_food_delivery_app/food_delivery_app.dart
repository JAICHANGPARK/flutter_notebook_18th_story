import 'package:flutter/material.dart';

import 'src/ui/food_delivery_home_screen.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodDeliveryHomeScreen(),
    );
  }
}
