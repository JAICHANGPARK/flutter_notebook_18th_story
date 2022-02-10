import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EstateSplashScreen extends StatelessWidget {
  const EstateSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              "https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_960_720.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
