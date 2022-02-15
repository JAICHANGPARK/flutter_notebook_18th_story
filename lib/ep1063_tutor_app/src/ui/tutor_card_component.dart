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
            SizedBox(
              height: 8,
            ),
            Text(
              "Flutter Development",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Category: ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Cross-Platform",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Days/Week: ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "4 Weeks",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Class: ",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "One",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "Subject: ",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "Flutter/Android/iOS",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
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
            SizedBox(
              height: 16,
            ),
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
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
