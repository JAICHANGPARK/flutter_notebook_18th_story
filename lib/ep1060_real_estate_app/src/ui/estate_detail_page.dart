import 'package:flutter/material.dart';

class EstateDetailPage extends StatefulWidget {
  final String img;
  final String price;

  EstateDetailPage({
    Key? key,
    required this.img,
    required this.price,
  }) : super(key: key);

  @override
  _EstateDetailPageState createState() => _EstateDetailPageState();
}

class _EstateDetailPageState extends State<EstateDetailPage> {
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
