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
      children: [
        Text("Basic information"),

        Text("Width"),
        Row(
          children: [

          ],
        ),
        Slider(value: _widthValue, onChanged: (double value) {

        },

        )
      ],

    );
  }
}
