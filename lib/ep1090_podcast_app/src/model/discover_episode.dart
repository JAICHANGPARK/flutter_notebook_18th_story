import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_episode.freezed.dart';

@freezed
class DiscoverEpisode with _$DiscoverEpisode {
  factory DiscoverEpisode({
    String? img,
  }) = _DiscoverEpisode;
}
