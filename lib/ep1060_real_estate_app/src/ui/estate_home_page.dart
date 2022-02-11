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
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Good morning"),
                  Text("Dreamwalker"),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(Ionicons.alert_outline))
            ],
          )
        ],
      ),
    );
  }
}
