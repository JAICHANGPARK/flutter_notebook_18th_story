import 'package:flutter/material.dart';

class EstateDetailPage extends StatefulWidget {
  final String img;
  final String price;

  EstateDetailPage({
    Key? key,
    this.img,
    this.price,
  }) : super(key: key);

  @override
  _EstateDetailPageState createState() => _EstateDetailPageState();
}

class _EstateDetailPageState extends State<EstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
