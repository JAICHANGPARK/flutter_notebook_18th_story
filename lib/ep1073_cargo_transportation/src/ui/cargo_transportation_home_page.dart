import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CargoTransportationHomePage extends StatefulWidget {
  const CargoTransportationHomePage({Key? key}) : super(key: key);

  @override
  _CargoTransportationHomePageState createState() => _CargoTransportationHomePageState();
}

class _CargoTransportationHomePageState extends State<CargoTransportationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monday, July 1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Barcelona",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(4)),
                    child: Icon(
                      Ionicons.apps_outline,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.fact_check), label: "fact_check"),
          BottomNavigationBarItem(icon: Icon(Icons.sms_outlined), label: "sms"),
          BottomNavigationBarItem(icon: Icon(Icons.motion_photos_on_outlined), label: "motion_photos_on"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "account_circle"),
        ],
      ),
    );
  }
}
