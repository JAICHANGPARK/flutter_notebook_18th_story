import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1094_fitness_nutrition_app/fitness_nutrition_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: FitnessNutritionApp(),
    ),
  );
}
