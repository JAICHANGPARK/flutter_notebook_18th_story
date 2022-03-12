import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ep1090_podcast_app/podcast_app.dart';


main() {
  runApp(
    const ProviderScope(
      child: PodcastApp(),
    ),
  );
}
