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
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Placeholder(),
              ),
            ),
            Divider(
              height: 0,
              color: Colors.grey[500],
            ),
            Container(
              height: 72,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(32)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
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
