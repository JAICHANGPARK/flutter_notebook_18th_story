import 'package:flutter/material.dart';

class CalorieTrackingHomePage extends StatefulWidget {
  const CalorieTrackingHomePage({Key? key}) : super(key: key);

  @override
  _CalorieTrackingHomePageState createState() => _CalorieTrackingHomePageState();
}

class _CalorieTrackingHomePageState extends State<CalorieTrackingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Hello Dream!"),
        actions: const [],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 64,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.home_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.bookmark_border,
                      size: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Dairy",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: CircleAvatar(
                  child: Icon(Icons.add),
                  foregroundColor: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.assessment,
                      size: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Progress",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.settings_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
