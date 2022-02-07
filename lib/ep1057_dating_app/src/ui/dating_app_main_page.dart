import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final daTabProvider = StateProvider<int>((ref)=>0);

class DatingAppMainPage extends StatelessWidget {
  const DatingAppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}
