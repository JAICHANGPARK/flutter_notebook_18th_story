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
                        child:  Container(),
                        flex: 4,
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
                    child: const Text(
                      "E",
                      style: const TextStyle(color: Colors.white, fontSize: 32),
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
