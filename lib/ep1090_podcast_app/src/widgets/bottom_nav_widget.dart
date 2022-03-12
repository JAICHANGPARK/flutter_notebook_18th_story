import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/page_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(pageIndexProvider);
    return BottomNavigationBar(
      onTap: (idx) {
        ref.watch(pageIndexProvider.notifier).state = idx;
      },
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: "Discover",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: "My Queue",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "Settings",
        )
      ],
    );
  }
}
