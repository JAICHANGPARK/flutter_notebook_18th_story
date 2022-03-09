import 'package:flutter/material.dart';


class FundKeyboardWidget extends StatefulWidget {
  const FundKeyboardWidget({Key? key}) : super(key: key);

  @override
  State<FundKeyboardWidget> createState() => _FundKeyboardWidgetState();
}

class _FundKeyboardWidgetState extends State<FundKeyboardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ],
    );
  }
}
