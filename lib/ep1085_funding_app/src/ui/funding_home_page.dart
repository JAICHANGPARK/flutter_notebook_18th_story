import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1085_funding_app/src/provider/text_controller_pub.dart';
import 'package:flutter_notebook_18th_story/ep1085_funding_app/src/ui/widgets/fund_keyboard_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FundingHomePage extends StatelessWidget {
  const FundingHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  Expanded(child: Consumer(builder: (context, ref, _) {
                                    final c = ref.watch(incomeTextController);
                                    return TextField(
                                      controller: c,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    );
                                  })),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(color: Colors.black),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      size: 16,
                                    ),
                                  )
                                ],
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
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  Expanded(child: Consumer(builder: (context, ref, _) {
                                    final c = ref.watch(incomeTextController);
                                    return TextField(
                                      controller: c,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    );
                                  })),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(color: Colors.black),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      size: 16,
                                    ),
                                  )
                                ],
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
                              "Other income per month",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              border: Border.all(),
                            ),
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
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  Expanded(child: Consumer(builder: (context, ref, _) {
                                    final c = ref.watch(incomeTextController);
                                    return TextField(
                                      controller: c,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    );
                                  })),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                    width: 24,
                                  )
                                ],
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
                              "Debt / installment per month",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Transform.rotate(
                    angle: 0.02,
                    child: SizedBox(
                      height: 58,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 4,
                            top: 8,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(),
                              ),
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
                                  color: Colors.yellow,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: const Center(
                                  child: Text(
                                    "Calculate Zakat",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.teal[200]!,
                          radius: 200,
                        ),
                        top: 0,
                        left: -300,
                        bottom: 0,
                        right: 64,
                      ),
                      const Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 200,
                        ),
                        right: -64,
                        bottom: -250,
                        left: -200,
                      ),
                      const Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 94,
                        ),
                        right: -64,
                        bottom: -24,
                      ),
                    ],
                  )),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              child: SizedBox(
                height: 210,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 1.5,
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: FundKeyboardWidget(),
                      ),
                    )
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
