import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1081_pax_wardrobe_app/src/provider/pax_top_tab_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaxWardrobeMainPage extends StatelessWidget {
  const PaxWardrobeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Consumer(builder: (context, ref, _) {
              final idx = ref.watch(paxTopTabIndex);
              return SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        ref.read(paxTopTabIndex.notifier).state = 0;
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                              color: idx == 0 ? Colors.black : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: idx == 0 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Basic",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => ref.read(paxTopTabIndex.notifier).state = 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                              color: idx == 1 ? Colors.black : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: idx == 1 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Doors",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => ref.read(paxTopTabIndex.notifier).state = 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                              color: idx == 2 ? Colors.black : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: idx == 2 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Storage",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  final idx = ref.watch(paxTopTabIndex);
                  return IndexedStack(
                    index: idx,
                    children: [
                      PaxWardrobeBasicPage(),
                      PaxWardrobeDoorsPage(),
                    ],
                  );

                },

                ),
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
                  Consumer(
                    builder: (context, ref, _) {
                      final idx = ref.watch(paxTopTabIndex);
                      return Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              var i = idx;
                              i--;
                              if(i < 1){
                                i = 0;
                              }
                              ref.watch(paxTopTabIndex.notifier).state = i;
                            },
                          ),
                        ),
                      );
                    }
                  ),
                  const Spacer(),
                  Consumer(
                    builder: (context, ref, _) {
                      final idx = ref.watch(paxTopTabIndex);
                      return GestureDetector(
                        onTap: (){
                          var i = idx;
                          i++;
                          if( i > 1){
                            i = 2;
                          }
                          ref.watch(paxTopTabIndex.notifier).state = i;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 64,
                          ),
                          child: const Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
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
