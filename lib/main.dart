import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1081_pax_wardrobe_app/pax_wardrobe_app.dart';


main() {
  runApp(
     const ProviderScope(
      child: PaxWardrobeApp(),
    ),
  );
}
