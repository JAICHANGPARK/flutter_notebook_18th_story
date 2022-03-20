import 'package:flutter/material.dart';


class SmartHomeControlPage extends StatefulWidget {
  const SmartHomeControlPage({Key? key}) : super(key: key);

  @override
  State<SmartHomeControlPage> createState() => _SmartHomeControlPageState();
}

class _SmartHomeControlPageState extends State<SmartHomeControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.blue,

            ),
          )

        ],
      ),
    );
  }
}
