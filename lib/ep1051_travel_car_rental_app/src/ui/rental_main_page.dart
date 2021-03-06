import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RentalMainPage extends StatefulWidget {
  const RentalMainPage({Key? key}) : super(key: key);

  @override
  _RentalMainPageState createState() => _RentalMainPageState();
}

class _RentalMainPageState extends State<RentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: const [
                        Text(
                          "Hi, Dreamwalker",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                          hintText: "Where do you want to go?",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Popular destinations",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 42,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text("Norway")
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Trip collections",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Northern',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Norway',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Distance",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "344 km",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                flex: 3,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                        "https://cdn.pixabay.com/photo/2015/05/18/23/53/backpacker-772991__340.jpg",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                flex: 6,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Most Popular cars",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 64,
                          child: ListView.builder(
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text("New",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("DW01", style: TextStyle(
                                          fontSize: 12,
                                        ),),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                        child: CachedNetworkImage(
                                      imageUrl:
                                          "https://cdn.pixabay.com/photo/2013/07/12/12/56/ford-mustang-146580_960_720.png",
                                    ))
                                  ],
                                ),
                              ),
                            ),
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 64,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: const [],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.my_location,
                            color: Colors.grey,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.my_location,
                            color: Colors.grey,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
