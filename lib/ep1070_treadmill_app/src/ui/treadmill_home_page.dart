import 'package:flutter/material.dart';

class TreadmillHomePage extends StatelessWidget {
  const TreadmillHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Placeholder(),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(36),
                topLeft: Radius.circular(36),
              ),

            ),
            child: Row(
              children: [
                Expanded(child:  Column(
                  children: [
                    CircleAvatar()
                  ],
                ),),
                Expanded(child: Center(
                  child: CircleAvatar(
                    radius: 48,
                  ),
                )),
                Expanded(child:  Column(
                  children: [
                    CircleAvatar()
                  ],
                ),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
