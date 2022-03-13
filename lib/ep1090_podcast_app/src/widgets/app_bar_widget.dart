import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/provider/page_index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AppBarWidget extends ConsumerWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final idx = ref.watch(pageIndexProvider);
    var title = "";
    switch(idx){
      case 0:
        title = "Discover";
        break;
      default:
        title = "Unknown";
    }
    return AppBar(
      title: Text(title),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(64);
}
