import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/page_index_provider.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/ui/pod_discover_screen.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/widgets/app_bar_widget.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/widgets/bottom_nav_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PodMainPage extends StatelessWidget {
  const PodMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Consumer(
        builder: (context, ref, _) {
          final idx = ref.watch(pageIndexProvider);
          switch (idx) {
            case 0:
              return PodDiscoverScreen();
              // return const Center(
              //   child: Text("0"),
              // );
            case 1:
              return const Center(
                child: Text("1"),
              );
            case 2:
              return const Center(
                child: Text("2"),
              );
            case 3:
              return const Center(
                child: Text("3"),
              );
            default:
              return Container(
                color: Colors.red,
                child: const Center(
                  child: Text("Error"),
                ),
              );
          }
        },
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
