import 'package:flutter/material.dart';

class PaxWardrobeBasicPage extends StatefulWidget {
  const PaxWardrobeBasicPage({Key? key}) : super(key: key);

  @override
  State<PaxWardrobeBasicPage> createState() => _PaxWardrobeBasicPageState();
}

class _PaxWardrobeBasicPageState extends State<PaxWardrobeBasicPage> {
  double _widthValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Basic information",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 18
          ),
        ),
        SizedBox(height: 32,),
        Text("Width"),
        SizedBox(height: 24,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("50", style: TextStyle(
                color: Colors.grey,
                fontSize: 10
            ),),
            Text("300"),
          ],
        ),
        Slider(
          max: 300,
          min: 50,
          value: _widthValue,
          onChanged: (double value) {
            setState(() {
              _widthValue = value;
            });
          },
          label: "${_widthValue.toStringAsFixed(0)} cm",
        )
      ],
    );
  }
}
