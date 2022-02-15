import 'package:flutter/material.dart';

class TutorCardComponent extends StatelessWidget {
  const TutorCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dreamwalker"),
            Text("Flutter Development"),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text("Category: "),
                      Text("Cross-Platform"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("Days/Week: "),
                      Text("4 Weeks"),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text("Category: "),
                      Text("Cross-Platform"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("Days/Week: "),
                      Text("4 Weeks"),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text("Category: "),
                      Text("Cross-Platform"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("Days/Week: "),
                      Text("4 Weeks"),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text("Category: "),
                      Text("Cross-Platform"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text("Days/Week: "),
                      Text("4 Weeks"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
