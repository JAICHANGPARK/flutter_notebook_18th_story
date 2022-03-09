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
              Expanded(child: Text("1")),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          )
                        ),
                        TextSpan(
                          text: " ABC",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
