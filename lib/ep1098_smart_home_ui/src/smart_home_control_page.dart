import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1098_smart_home_ui/src/model/living_room_category.dart';

class SmartHomeControlPage extends StatefulWidget {
  const SmartHomeControlPage({Key? key}) : super(key: key);

  @override
  State<SmartHomeControlPage> createState() => _SmartHomeControlPageState();
}

class _SmartHomeControlPageState extends State<SmartHomeControlPage> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 72,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              padding: const EdgeInsets.only(right: 48),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Living Room",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 16,
                left: 16,
              ),
              child: Container(
                height: 72,
                child: ListView.builder(
                  itemCount: categoryItems.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                )
                              ],
                            ),
                            child: Icon(
                              categoryItems[index].iconData,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            categoryItems[index].title,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 320,
                child: Container(
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 16,
                        bottom: 16,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.remove,
                              ),
                            ),
                            const Expanded(child: Placeholder()),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 8,
                          bottom: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Min",
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4,),
                              const Text(
                                "16°C",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )),
                      Positioned(
                          right: 8,
                          bottom: 24,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Max",
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 4,),
                              const Text(
                                "32°C",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SizedBox(
                height: 54,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Current temperature",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "18°C",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Current humidity",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "40%",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Samsung AC",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Connected",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Switch.adaptive(
                          value: _switchValue,
                          onChanged: (v) {
                            setState(() {
                              _switchValue = v;
                            });
                          })
                    ],
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
