import 'dart:async';

import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/discover_episode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final discoverEpisodeProvider = StreamProvider<List<DiscoverEpisode>>((ref) => DiscoverEpisodeController().getStream());

class DiscoverEpisodeController {
  final StreamController<List<DiscoverEpisode>> _streamController = StreamController();
  List<DiscoverEpisode> _items = [];

  DiscoverEpisodeController() {
    addStreamData();
  }

  Stream<List<DiscoverEpisode>> getStream() {
    return _streamController.stream;
  }

  Future addStreamData() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      _items.add(
        DiscoverEpisode(
          img: "https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010__340.jpg",
          tag: "EDUCATION",
          title: "EP 6: How To Manage Yourself",
          subtitle: "Roman Jade Fed 21",
          duration: "18:02",
        ),
      );
      _streamController.add(_items);
    }
  }
}
