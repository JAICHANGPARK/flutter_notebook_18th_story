import 'package:flutter/material.dart';

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
            child: ListView.builder(
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
                      const Text(
                        "How To Lead",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "By Kane Brothers",
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
            ),
          )
        ],
      ),
    );
  }
}
