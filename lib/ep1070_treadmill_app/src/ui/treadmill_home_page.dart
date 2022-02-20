import 'package:flutter/material.dart';

class TreadmillHomePage extends StatelessWidget {
  const TreadmillHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Placeholder(),
          ),
          Container(
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(36),
                topLeft: Radius.circular(36),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 36, vertical: 36),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.power_settings_new),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "SLEEP",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Text("A")
                  ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "AUTO",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
