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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Placeholder(),
              ),
            ),
            Divider(height: 0, color: Colors.grey[500],),
            Container(
              height: 72,
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
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
