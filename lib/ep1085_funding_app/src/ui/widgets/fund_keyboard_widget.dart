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
            children: const [
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "1",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "     ",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  ABC",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "3",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  DEF",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 32),
                ),
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "4",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  GHI",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  JKL",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "6",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: "  MNO",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                      child: Icon(
                Icons.voicemail,
              ))),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "7",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  PQRS",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "8",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "  TUV",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "9",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: "  WXYZ",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Icon(
                    Icons.login,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "*#",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: "  ",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "0",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: "  +",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: ".",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        TextSpan(
                            text: "      ",
                            style: TextStyle(
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                    left: 4,
                    top: 4,
                    right: 8,
                    bottom: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                      ),
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
