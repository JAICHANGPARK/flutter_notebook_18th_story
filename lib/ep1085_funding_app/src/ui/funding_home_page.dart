import 'package:dotted_border/dotted_border.dart';
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
              left: 24,
              right: 24,
              bottom: 16,
              top: 16,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
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
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Profession"),
                          const SizedBox(
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
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Mail"),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.grey[400]!,
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  SizedBox(
                    height: 58,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          top: 8,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.yellow, border: Border.all()),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 4,
                          right: 4,
                          bottom: 4,
                          child: DottedBorder(
                            color: Colors.black,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 24,
                            top: 0,
                            child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: const Text(
                                  "Income per month",
                                  style: const TextStyle(fontSize: 10),
                                )))
                      ],
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
