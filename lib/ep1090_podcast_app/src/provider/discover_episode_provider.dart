import 'dart:async';

import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/discover_episode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final discoverEpisodeProvider = StreamProvider<List<DiscoverEpisode>>((ref) =>
    DiscoverEpisodeController().getStream());

class DiscoverEpisodeController {
  final StreamController<List<DiscoverEpisode>> _streamController = StreamController();
  List<DiscoverEpisode> _items = [];

  Stream<List<DiscoverEpisode>> getStream() {
    return _streamController.stream;
  }

  Future addStreamData() async {
    await Future.delayed(Duration(seconds: 2));
    _items.add(DiscoverEpisode());
    _streamController.add(_items);
  }
}
