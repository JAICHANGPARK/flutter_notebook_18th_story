import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final daTabProvider = StateProvider<int>((ref)=>0);

class DatingAppMainPage extends ConsumerWidget {
  const DatingAppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final tabIndex = ref.watch(daTabProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            height: 72,
            color: Colors.black,
          )

        ],
      ),
    );
  }
}
