import 'package:flutter/material.dart';

class MeetingCreatePage extends StatefulWidget {
  const MeetingCreatePage({Key? key}) : super(key: key);

  @override
  State<MeetingCreatePage> createState() => _MeetingCreatePageState();
}

class _MeetingCreatePageState extends State<MeetingCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    "New Meeting",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
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
