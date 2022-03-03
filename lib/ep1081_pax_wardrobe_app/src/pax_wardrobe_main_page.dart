import 'package:flutter/material.dart';


class PaxWardrobeMainPage extends StatelessWidget {
  const PaxWardrobeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Placeholder(),
            ),
            Divider(height: 0, color: Colors.grey[200],),
            Container(
              height: 72,
            )

          ],
        ),
      ),

    );
  }
}
