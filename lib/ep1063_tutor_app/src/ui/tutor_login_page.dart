import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TutorLoginPage extends StatelessWidget {
  const TutorLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: -200,
                  top: -250,
                  right: -64,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(child: SvgPicture.asset("assets/ep1063/learning_bro.svg",),
                left: 0,
                  right: 0,
                  bottom: 0,
                  top: 64,
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Find Your Best"),
              Text.rich(TextSpan(children:
              [
                TextSpan()

              ]))
            ],
          ))
        ],
      ),
    );
  }
}
