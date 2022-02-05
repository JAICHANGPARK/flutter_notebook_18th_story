import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FoodDeliveryHomeScreen extends StatefulWidget {
  const FoodDeliveryHomeScreen({Key? key}) : super(key: key);

  @override
  _FoodDeliveryHomeScreenState createState() => _FoodDeliveryHomeScreenState();
}

class _FoodDeliveryHomeScreenState extends State<FoodDeliveryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                          children: [
                              Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                backgroundColor: Colors.grey[100],
                                child: const Icon(
                                    Icons.menu,
                                ),
                              ),
                                  )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text("LOCATION"),
                                      const Icon(Icons.expand_more),
                                    ],
                                  ),
                                  const Text("Seoul, Korea"),
                                ],
                              )),
                              const Expanded(child: CircleAvatar()),
                          ],
                        ),
                            )),
                        const Expanded(child: const Placeholder()),
                        const Expanded(child: const Placeholder()),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 10,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 64,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.home_outline,
                              color: Colors.deepPurpleAccent,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.compass_outline,
                              // color: Colors.deepPurpleAccent,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Offers",
                              style: TextStyle(
                                fontSize: 10,
                                // color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(),
                        flex: 3,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.bookmark_outline,
                              // color: Colors.deepPurpleAccent,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Saved",
                              style: TextStyle(
                                fontSize: 10,
                                // color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.bag_handle_outline,
                              // color: Colors.deepPurpleAccent,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Cart",
                              style: TextStyle(
                                fontSize: 10,
                                // color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: Container(
                  height: 84,
                  width: 84,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Text(
                      "E",
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
