import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/page_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BottomNavWidget extends ConsumerWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final index = ref.watch(pageIndexProvider);
    return Container();
  }
}
