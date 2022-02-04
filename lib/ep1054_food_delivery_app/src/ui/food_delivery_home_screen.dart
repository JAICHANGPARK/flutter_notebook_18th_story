import 'package:flutter/material.dart';

class FoodDeliveryHomeScreen extends StatefulWidget {
  const FoodDeliveryHomeScreen({Key? key}) : super(key: key);

  @override
  _FoodDeliveryHomeScreenState createState() => _FoodDeliveryHomeScreenState();
}

class _FoodDeliveryHomeScreenState extends State<FoodDeliveryHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [],
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 24,
              child: Center(
                child: Container(
                  height: 72,
                  width: 72,
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
