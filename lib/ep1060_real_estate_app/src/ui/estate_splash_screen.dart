import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EstateSplashScreen extends StatelessWidget {
  const EstateSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              "https://cdn.pixabay.com/photo/2020/03/23/07/59/office-4959785_960_720.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Find your dream",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "apartment now",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text("Find your place easly travel"),
              const Text("anywhere you want with us."),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 38,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const Spacer(),
                  ClipRect(
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).go("/home");
                      },
                      child: SizedBox(
                        height: 48,
                        width: 48,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.east,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
