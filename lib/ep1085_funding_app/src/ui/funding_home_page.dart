import 'package:flutter/material.dart';

class FundingHomePage extends StatelessWidget {
  const FundingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              top: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 48),
                          child: Center(
                            child: Text("Calculator Zakat"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Profession"),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.teal,
                            ),
                          )
                        ],
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Mail"),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Colors.grey[400],
                            ),
                          )
                        ],
                      )),
                    ],
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
