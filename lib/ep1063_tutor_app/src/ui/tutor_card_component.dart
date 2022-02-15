import 'package:flutter/material.dart';


class TutorCardComponent extends StatelessWidget {
  const TutorCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Dreamwalker"),
            Text("Flutter Development"),

            Row(
              children: [
                Text("Category: "),
                Text("Cross-Platform")
              ],
            )
          ],
        ),
      ),
    );
  }
}
