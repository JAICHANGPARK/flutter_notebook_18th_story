import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1079_food_delivery_app/src/model/food_history.dart';

class FoodDeliveryHomePage extends StatelessWidget {
  FoodDeliveryHomePage({Key? key}) : super(key: key);

  ValueNotifier<int> tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 72,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ValueListenableBuilder<int>(
                        valueListenable: tabIndex,
                        builder: (context, value, _) {
                          return Container(
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      print("basket");
                                      tabIndex.value = 0;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: value == 0 ? Colors.white : Colors.transparent,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "My Basket",
                                          style: TextStyle(
                                            color: value == 0 ? Colors.red : Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      tabIndex.value = 1;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: value == 1 ? Colors.white : Colors.transparent,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "History",
                                          style: TextStyle(
                                            color: value == 1 ? Colors.red : Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: foodHistoryItems.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),

                                child: Card(
                                  elevation: 4,
                                  shadowColor: Colors.black.withOpacity(0.4),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: 84,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 64,
                                                  width: 64,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: CachedNetworkImageProvider(
                                                        foodHistoryItems[index].img ?? "",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    borderRadius: BorderRadius.circular(8),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(16.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 16),
                                                          child: Text(
                                                            foodHistoryItems[index].title ?? "",
                                                            style: const TextStyle(
                                                                fontWeight: FontWeight.bold, fontSize: 16),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 8,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("${foodHistoryItems[index].itemCount} items"),
                                                            Text.rich(
                                                              TextSpan(
                                                                children: [
                                                                  const TextSpan(
                                                                    text: "\$",
                                                                    style: TextStyle(color: Colors.red, fontSize: 16),
                                                                  ),
                                                                  TextSpan(
                                                                    text: "${foodHistoryItems[index].price}",
                                                                    style: const TextStyle(fontSize: 16),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          height: 32,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                    ),
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Rate",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(24),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      "Re-Order",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 16,
                right: 16,
                bottom: 8,
                child: SizedBox(
                  height: 78,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 68,
                            width: 68,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 8,
                              ),
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.white,
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
