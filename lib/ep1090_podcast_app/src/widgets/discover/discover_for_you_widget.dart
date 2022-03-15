import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/discover_episode.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/popular_cast.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/discover_episode_provider.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/popular_cast_loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverForYouWidget extends StatelessWidget {
  const DiscoverForYouWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Podcasts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SEE ALL",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 160,
            child: Consumer(builder: (context, ref, _) {
              AsyncValue<List<PopularCast>> items = ref.watch(popularCastLoadProvider);
              return items.when(
                data: (items) {
                  if (items.isEmpty) {
                    return const Center(
                      child: Text("Empty"),
                    );
                  }
                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 140,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.pink,
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    items[index].img ?? "",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      child: Text(
                                        items[index].tag ?? "",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    left: 8,
                                    bottom: 8,
                                  )
                                ],
                              ),
                            ),
                            Text(
                              // "How To Lead",
                              items[index].title ?? "unknown",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "By ${items[index].speaker ?? "unknown"}",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  );
                },
                error: (err, trace) {
                  return const Center(
                    child: Text("err"),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Episodes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SEE ALL",
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: Consumer(builder: (context, ref, _) {
            AsyncValue<List<DiscoverEpisode>> episodeItems = ref.watch(discoverEpisodeProvider);

            return episodeItems.when(
                data: (items) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                          height: 120,
                          decoration: const BoxDecoration(color: Colors.pink),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      items[index].img ?? "",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                      ),
                                      child: Text(
                                        items[index].tag ?? "",
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      items[index].title ?? "",
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      items[index].subtitle ?? "",
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ));
                    },
                    separatorBuilder: (_, __) => const Divider(),
                    itemCount: items.length,
                  );
                },
                error: (e, s) => Center(
                      child: Text("${e.toString()}, ${s.toString()}"),
                    ),
                loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ));
          }))
        ],
      ),
    );
  }
}
