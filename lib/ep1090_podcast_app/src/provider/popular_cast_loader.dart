import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/popular_cast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final popularCastLoadProvider = FutureProvider<List<PopularCast>>((ref) async {
  await Future.delayed(const Duration(seconds: 4));
  return [
    PopularCast(
        title: "How To Lead",
        speaker: "Dreamwalker",
        img: "https://cdn.pixabay.com/photo/2021/05/10/10/46/yellow-wall-6243164__340.jpg",
        tag: "Business"),
    PopularCast(
        title: "Financial Education",
        speaker: "Dreamwalker",
        img: "https://cdn.pixabay.com/photo/2016/11/29/08/42/frame-1868498__340.jpg",
        tag: "Business"),
    PopularCast(
        title: "Lifestyle Business",
        speaker: "Dreamwalker",
        img: "https://cdn.pixabay.com/photo/2021/05/10/10/46/yellow-wall-6243164__340.jpg",
        tag: "Business"),
    PopularCast(
        title: "Flutter Development",
        speaker: "Dreamwalker",
        img: "https://cdn.pixabay.com/photo/2021/05/10/10/46/yellow-wall-6243164__340.jpg",
        tag: "Business"),
    PopularCast(
        title: "Android Compose",
        speaker: "Dreamwalker",
        img: "https://cdn.pixabay.com/photo/2021/05/10/10/46/yellow-wall-6243164__340.jpg",
        tag: "Business"),
  ];
});
