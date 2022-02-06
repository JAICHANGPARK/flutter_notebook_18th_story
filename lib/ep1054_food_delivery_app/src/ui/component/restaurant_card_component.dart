import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RestaurantCardComponent extends StatelessWidget {
  const RestaurantCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                    "https://cdn.pixabay.com/photo/2017/01/31/09/30/raspberries-2023404__340.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: const [
                            Text(
                              "4.5",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                              size: 11,
                            ),
                            Text(
                              "(100+)",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Ionicons.bookmark_outline,
                          size: 12,
                        ),
                      )
                    ],
                  ),
                  left: 8,
                  right: 8,
                  top: 8,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "The Fat Duck",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Burger - Plater - Rice - Chickens",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: const [
                Icon(
                  Icons.delivery_dining,
                  color: Colors.purpleAccent,
                  size: 16,
                ),
                Text(
                  "Free Delivery",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.timer,
                  color: Colors.purpleAccent,
                  size: 16,
                ),
                Text(
                  "15-20 mins",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}
