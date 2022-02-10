import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1060_real_estate_app/real_estate_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: RealEstateApp(),
    ),
  );
}
