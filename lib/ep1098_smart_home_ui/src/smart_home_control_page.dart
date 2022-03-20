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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 84,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Colors.white,
                  ),
                  Text("")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
