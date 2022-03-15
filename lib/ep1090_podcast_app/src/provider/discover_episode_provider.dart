import 'dart:async';

import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/discover_episode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final discoverEpisodeProvider = StreamProvider<List<DiscoverEpisode>>((ref) =>
    DiscoverEpisodeController().getStream());

class DiscoverEpisodeController {
  final StreamController<List<DiscoverEpisode>> _streamController = StreamController();
  List<DiscoverEpisode> _items = [];

  DiscoverEpisodeController(){
    addStreamData();
  }

  Stream<List<DiscoverEpisode>> getStream() {
    return _streamController.stream;
  }

  Future addStreamData() async {
    for(int i = 0; i < 10; i++){
      await Future.delayed(const Duration(seconds: 2));
      _items.add(DiscoverEpisode());
      _streamController.add(_items);
    }

  }
}
