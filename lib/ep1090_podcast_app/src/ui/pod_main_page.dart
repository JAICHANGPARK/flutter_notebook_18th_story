import 'package:flutter/material.dart';


class PodMainPage extends StatelessWidget {
  const PodMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Discover",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "My Queue",),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings",)
        ],
      ),
    );
  }
}
