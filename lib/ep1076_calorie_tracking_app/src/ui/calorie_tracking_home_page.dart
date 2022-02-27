import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1076_calorie_tracking_app/src/utils/calorie_app_theme.dart';

class CalorieTrackingHomePage extends StatefulWidget {
  const CalorieTrackingHomePage({Key? key}) : super(key: key);

  @override
  _CalorieTrackingHomePageState createState() => _CalorieTrackingHomePageState();
}

class _CalorieTrackingHomePageState extends State<CalorieTrackingHomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Hello Dream!"),
        backgroundColor: appBarColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            icon: const Icon(
              Icons.content_paste,
            ),
            iconSize: 20,
          ),
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            icon: const Icon(
              Icons.notifications_outlined,
            ),
            iconSize: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Goal Weight",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "154.3",
                      style: TextStyle(
                        fontSize: 32,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "lbs",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 64),
                child: Text(
                  "Every pound starts with a ounce, don't forget to keep us updated on your progress.",
                  style: TextStyle(color: Colors.white, height: 1.3),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 82,
                color: Colors.white,
                child: Center(
                  child: Text("Summary"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Text("Protein"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Text("Carbs"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Text("Fat"),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 64,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 20,
                        color: _tabIndex == 0 ? primaryColor : Colors.grey,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 10,
                          color: _tabIndex == 0 ? primaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bookmark_border,
                        size: 20,
                        color: _tabIndex == 1 ? primaryColor : Colors.grey,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Dairy",
                        style: TextStyle(
                          fontSize: 10,
                          color: _tabIndex == 1 ? primaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               Expanded(
                child: CircleAvatar(
                  child: Icon(Icons.add),
                  foregroundColor: Colors.white,
                  backgroundColor: primaryColor,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.assessment,
                        size: 20,
                        color: _tabIndex == 2 ? primaryColor : Colors.grey,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Progress",
                        style: TextStyle(
                          fontSize: 10,
                          color: _tabIndex == 2 ? primaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        size: 20,
                        color: _tabIndex == 3 ? primaryColor : Colors.grey,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 10,
                          color: _tabIndex == 3 ? primaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
