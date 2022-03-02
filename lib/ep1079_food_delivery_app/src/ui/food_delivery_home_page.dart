import 'package:flutter/material.dart';

class FoodDeliveryHomePage extends StatelessWidget {
  const FoodDeliveryHomePage({Key? key}) : super(key: key);

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
              child: ValueListenableBuilder<int>(
                valueListenable: tabIndex,
                builder: (context, value, _){

                  return Container(
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
                        Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Row(
                            children: [
                              const Expanded(
                                  child: Center(
                                    child: Text(
                                      "My Basket",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){
                                    tabIndex.value = 1;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "History",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Expanded(child: Placeholder()),
                      ],
                    ),
                  );
                },

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
