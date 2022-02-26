
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
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          color: Colors.grey,
          child: Row(
            children: [
              Column(
                children: [
                  Icon(Icons.home_outlined),
                  Text("Home")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.bookmark_border),
                  Text("Dairy")
                ],
              ),
              CircleAvatar(
                child: Icon(Icons.add),
                foregroundColor: Colors.white,
              ),

            ],
          ),
        )
      ),
    );
  }
}
