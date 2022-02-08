import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final daTabProvider = StateProvider<int>((ref) => 0);

class DatingAppMainPage extends ConsumerWidget {
  const DatingAppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final tabIndex = ref.watch(daTabProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_phone),
                  color: Colors.white,
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_alt),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blue.withOpacity(0.4),
                  height: 200,
                );
              },
            ),
          ),
          Container(
            height: 48,
            color: Colors.deepOrange,
          ),
          Container(
            height: 72,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    ref.read(daTabProvider.notifier).state = 0;
                  },
                  icon: tabIndex == 0
                      ? const Icon(Icons.home, color: Colors.white)
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.grey,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    ref.read(daTabProvider.notifier).state = 1;
                  },
                  icon: tabIndex == 1
                      ? const Icon(Icons.storm, color: Colors.white)
                      : const Icon(
                          Icons.storm,
                          color: Colors.grey,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    ref.read(daTabProvider.notifier).state = 2;
                  },
                  icon: tabIndex == 2
                      ? const Icon(Icons.chat, color: Colors.white)
                      : const Icon(
                          Icons.chat,
                          color: Colors.grey,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    ref.read(daTabProvider.notifier).state = 3;
                  },
                  icon: tabIndex == 2
                      ? const Icon(Icons.perm_identity, color: Colors.white)
                      : const Icon(
                          Icons.perm_identity,
                          color: Colors.grey,
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
