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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Basic information",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
          SizedBox(
            height: 32,
          ),
          Text("Width"),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "50",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                Text(
                  "300",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ),
          Slider(
            max: 300,
            min: 50,
            value: _widthValue,
            thumbColor: Colors.black,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            onChanged: (double value) {
              setState(() {
                _widthValue = value;
              });
            },
            label: "${_widthValue.toStringAsFixed(0)} cm",
          )
        ],
      ),
    );
  }
}
