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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "LOCATION",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                      ),
                                      Icon(
                                        Icons.expand_more,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "Seoul, Korea",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              )),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: CircleAvatar(),
                                ),
                              ),
                            ],
                          ),
                        )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Search Restaurant of Food items"
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    child: Icon(Icons.tune),
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.purpleAccent,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Placeholder(),
                        ),
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
