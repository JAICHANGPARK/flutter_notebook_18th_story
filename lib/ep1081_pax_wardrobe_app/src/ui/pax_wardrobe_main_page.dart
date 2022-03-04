import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaxWardrobeMainPage extends StatelessWidget {
  const PaxWardrobeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, _) {
                return SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text("1"),
                            ),
                          ),
                          const SizedBox(height: 4,),
                          const Text(
                            "Basic",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text("2"),
                            ),
                          ),
                          const SizedBox(height: 4,),
                          const Text(
                            "Doors",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text("3"),
                            ),
                          ),
                          const SizedBox(height: 4,),
                          const Text(
                            "Storage",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Placeholder(),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[500],
            ),
            Container(
              height: 72,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(32)),
                    padding: const EdgeInsets.symmetric(horizontal: 64),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
