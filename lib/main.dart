import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1085_funding_app/funding_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


main() {
  runApp(
     const ProviderScope(
      child: FundingApp(),
    ),
  );
}
