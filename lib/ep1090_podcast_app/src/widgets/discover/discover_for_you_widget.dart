import 'package:flutter/material.dart';

class DiscoverForYouWidget extends StatelessWidget {
  const DiscoverForYouWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Podcasts",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEE ALL",
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
