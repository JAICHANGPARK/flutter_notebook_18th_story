import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  left: 8,
                  bottom: 100,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.cyan,
                    ),
                  ),
                ),
                Positioned(
                  right: -16,
                  top: 48,
                  child: Container(
                    height: 420,
                    width: 340,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.lightGreen),
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                  ),
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top: 0,
                ),
                const Positioned(
                  left: 16,
                  top: 16,
                  right: 16,
                  bottom: 0,
                  child: Text(
                    "DON'T SIT AT HOME. GO\nFOR\nA RIDE!",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16, top: 24),
              child: GestureDetector(
                onTap: () => GoRouter.of(context).go("/main"),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
