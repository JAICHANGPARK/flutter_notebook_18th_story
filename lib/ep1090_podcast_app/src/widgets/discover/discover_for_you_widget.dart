import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/model/popular_cast.dart';
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
                  return ListView.builder(
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
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                              ),
                            ),
                            Text(
                              // "How To Lead",
                              items[index].title ?? "unknown",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "By ${items[index].speaker ?? "unknown"}",
                              style: TextStyle(
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
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                decoration: const BoxDecoration(color: Colors.pink),
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10,
          ))
        ],
      ),
    );
  }
}
