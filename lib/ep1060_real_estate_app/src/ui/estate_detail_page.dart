import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EstateDetailPage extends StatefulWidget {
  final String img;
  final String price;
  final String title;
  final String imgTag;

  EstateDetailPage({
    Key? key,
    required this.img,
    required this.title,
    required this.price,
    required this.imgTag,
  }) : super(key: key);

  @override
  _EstateDetailPageState createState() => _EstateDetailPageState();
}

class _EstateDetailPageState extends State<EstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        widget.img,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text("${widget.title}", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
