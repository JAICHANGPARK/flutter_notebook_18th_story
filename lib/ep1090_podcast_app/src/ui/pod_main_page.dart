import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/widgets/bottom_nav_widget.dart';

class PodMainPage extends StatelessWidget {
  const PodMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
