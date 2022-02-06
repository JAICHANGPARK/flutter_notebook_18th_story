import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
                                  foregroundColor: Colors.black,
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
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: Row(
                                children: const [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.search),
                                          border: InputBorder.none,
                                          hintText: "Search Restaurant of Food items"),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.deepPurple,
                                  foregroundColor: Colors.white,
                                  child: Text("All"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 12,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          child: Text("🥤"),
                                          backgroundColor: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Drink",
                                          style: TextStyle(
                                            color: Colors.purpleAccent,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 12,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          child: Text("🍔"),
                                          backgroundColor: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Burger",
                                          style: TextStyle(
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 12,
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Row(
                                      children: const [
                                        CircleAvatar(
                                          child: Text("🍔"),
                                          backgroundColor: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Burger",
                                          style: TextStyle(
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Restaurant Near You",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("View All"),
                                  style: TextButton.styleFrom(primary: Colors.deepPurpleAccent),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 200,
                              child: Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: SizedBox(
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
                                                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.circular(16)),
                                                          child: Row(
                                                            children: [
                                                              const Text(
                                                                "4.5",
                                                                style: const TextStyle(
                                                                    fontWeight: FontWeight.bold, fontSize: 12),
                                                              ),
                                                              const Icon(
                                                                Icons.star,
                                                                color: Colors.orangeAccent,
                                                                size: 11,
                                                              ),
                                                              const Text(
                                                                "(100+)",
                                                                style: const TextStyle(
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
                                                children: [
                                                  const Icon(
                                                    Icons.delivery_dining,
                                                    color: Colors.purpleAccent,
                                                    size: 16,
                                                  ),
                                                  const Text(
                                                    "Free Delivery",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                  const SizedBox(
                                                    width: 16,
                                                  ),
                                                  const Icon(
                                                    Icons.timer,
                                                    color: Colors.purpleAccent,
                                                    size: 16,
                                                  ),
                                                  const Text(
                                                    "15-20 mins",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ]),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
