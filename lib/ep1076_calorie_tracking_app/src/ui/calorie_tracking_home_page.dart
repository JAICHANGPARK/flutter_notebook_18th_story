
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined),
                  Text("Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
