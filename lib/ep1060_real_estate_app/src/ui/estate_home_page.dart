import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class EstateHomePage extends StatefulWidget {
  const EstateHomePage({Key? key}) : super(key: key);

  @override
  _EstateHomePageState createState() => _EstateHomePageState();
}

class _EstateHomePageState extends State<EstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning"),
                        Text("Dreamwalker"),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Ionicons.notifications_outline),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
