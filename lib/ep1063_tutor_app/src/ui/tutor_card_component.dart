import 'package:flutter/material.dart';

class TutorCardComponent extends StatelessWidget {
  const TutorCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dreamwalker"),
            SizedBox(height: 8,),
            Text("Flutter Development"),
            SizedBox(height: 12,),
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
            SizedBox(height: 8,),
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
            SizedBox(height: 8,),
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
            SizedBox(height: 16,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Text("Message"),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(width: 12,),
                Container(
                  child: Text("Call"),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
