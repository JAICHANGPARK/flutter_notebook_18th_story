import 'package:flutter/material.dart';

class RentalMainPage extends StatefulWidget {
  const RentalMainPage({Key? key}) : super(key: key);

  @override
  _RentalMainPageState createState() => _RentalMainPageState();
}

class _RentalMainPageState extends State<RentalMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [Text("Hi, Dreamwalker"), Spacer(), CircleAvatar()],
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 64,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.my_location,
                            color: Colors.grey,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.my_location,
                            color: Colors.grey,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
