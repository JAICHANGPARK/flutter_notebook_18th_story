import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final daTabProvider = StateProvider<int>((ref) => 0);

class DatingAppMainPage extends ConsumerWidget {
  const DatingAppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final tabIndex = ref.watch(daTabProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.black,
          ),
          Expanded(
              child: Container(
            color: Colors.blue.withOpacity(0.4),
          )),
          Container(
            height: 42,
            color: Colors.deepOrange,
          ),
          Container(
            height: 72,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
