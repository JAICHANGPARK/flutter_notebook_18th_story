import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
              SizedBox(
                height: 120,
              ),
              Text(
                "Find your dream",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "apartment now",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text("Find your place easly travel"),
              Text("anywhere you want with us."),
              Spacer(),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 3,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
